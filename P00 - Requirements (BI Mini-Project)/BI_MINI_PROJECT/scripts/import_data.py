import pandas as pd
from sqlalchemy import create_engine
import os
import pandas as pd
from sqlalchemy import create_engine
import os
import requests
import zipfile
import io
import glob

# Database connection parameters
DB_USER = os.getenv('POSTGRES_USER')
DB_PASSWORD = os.getenv('POSTGRES_PASSWORD')
DB_NAME = os.getenv('POSTGRES_DB')
DB_HOST = os.getenv('DB_HOST', 'localhost')
DB_PORT = '5432'
DATABASE_URI = f'postgresql://{DB_USER}:{DB_PASSWORD}@{DB_HOST}:{DB_PORT}/{DB_NAME}'

# Direct Download URL
DATA_URL = "https://cloud.uol.de/public.php/dav/files/DRBP72f7odnrN6k/financial-transactions.zip"
DATA_DIR = "/data"

def download_and_extract_data():
    # Check if we already have CSVs
    if glob.glob(os.path.join(DATA_DIR, "**/*.csv"), recursive=True):
        print("CSV files found in /data. Skipping download.")
        return

    print(f"Downloading data from {DATA_URL}...")
    try:
        r = requests.get(DATA_URL, stream=True)
        r.raise_for_status()
        
        zip_path = os.path.join(DATA_DIR, "downloaded_data.zip")
        with open(zip_path, 'wb') as f:
            for chunk in r.iter_content(chunk_size=8192):
                f.write(chunk)
        
        print("Download complete. Extracting outer zip...")
        with zipfile.ZipFile(zip_path, 'r') as zip_ref:
            zip_ref.extractall(DATA_DIR)
        os.remove(zip_path)

        # Check for nested zips and extract them too
        nested_zips = glob.glob(os.path.join(DATA_DIR, "**/*.zip"), recursive=True)
        for nested in nested_zips:
            print(f"Extracting nested zip: {nested}")
            try:
                with zipfile.ZipFile(nested, 'r') as zip_ref:
                    # Extract to the same directory as the zip
                    extract_path = os.path.dirname(nested)
                    zip_ref.extractall(extract_path)
                os.remove(nested)
            except Exception as e:
                print(f"Failed to extract {nested}: {e}")
            
        print("Recursive extraction setup complete.")

    except Exception as e:
        print(f"Error downloading/extracting data: {e}")

def import_csv_to_postgres():
    download_and_extract_data()
    
    try:
        engine = create_engine(DATABASE_URI)
        
        # Find all CSV files in /data directory
        csv_files = glob.glob(os.path.join(DATA_DIR, '*.csv'))
        
        if not csv_files:
            print("No CSV files found in /data directory after download attempt.")
            # Check for subdirectories if zip extracted into a folder
            # Simple recursive search
            csv_files = glob.glob(os.path.join(DATA_DIR, '**/*.csv'), recursive=True)
            if not csv_files:
                 print("Still no CSV files found.")
                 return

        for csv_file in csv_files:
            table_name = os.path.splitext(os.path.basename(csv_file))[0]
            # Sanitize table name
            table_name = table_name.replace('-', '_').lower()

            print(f"Processing {csv_file} -> Table: {table_name}")
            
            # Using chunksize for safety
            chunksize = 10000
            for i, chunk in enumerate(pd.read_csv(csv_file, chunksize=chunksize)):
                # Clean column names
                chunk.columns = [c.strip().replace(' ', '_').lower() for c in chunk.columns]
                
                if i == 0:
                    chunk.to_sql(table_name, engine, if_exists='replace', index=False)
                    print(f"Table '{table_name}' created.")
                else:
                    chunk.to_sql(table_name, engine, if_exists='append', index=False)
                print(f"Imported chunk {i+1}")
            
            print(f"Finished importing {csv_file}")
            
    except Exception as e:
        print(f"Error importing data: {e}")

if __name__ == "__main__":
    import_csv_to_postgres()
