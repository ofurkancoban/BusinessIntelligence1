import requests
import os
import time

METABASE_URL = "http://metabase:3000"
SETUP_TOKEN = os.getenv("METABASE_SETUP_TOKEN") # Optional for now, usually retrieved from API if not set? Actually, we'll just use the setup API if clean.

# Metabase Admin Credentials
MB_ADMIN_EMAIL = "admin@admin.com"
MB_ADMIN_PASSWORD = "Password123!"
MB_ADMIN_FIRST_NAME = "Admin"
MB_ADMIN_LAST_NAME = "User"

# Postgres Connection Details
DB_USER = os.getenv('POSTGRES_USER')
DB_PASSWORD = os.getenv('POSTGRES_PASSWORD')
DB_NAME = os.getenv('POSTGRES_DB')
DB_HOST = "postgres"
DB_PORT = 5432

def wait_for_metabase():
    print("Waiting for Metabase to be ready...")
    for _ in range(60):
        try:
            r = requests.get(f"{METABASE_URL}/api/health")
            if r.status_code == 200:
                print("Metabase is ready.")
                return True
        except requests.exceptions.ConnectionError:
            pass
        time.sleep(2)
    print("Metabase failed to start.")
    return False

def get_setup_token():
    try:
        r = requests.get(f"{METABASE_URL}/api/session/properties")
        if r.status_code == 200:
            props = r.json()
            return props.get("setup-token")
    except Exception as e:
        print(f"Error getting setup token: {e}")
    return None

def setup_metabase():
    setup_token = get_setup_token()
    if not setup_token:
        print("Metabase already set up or token not found.")
        # If already setup, we might need to login to add database
        session_id = login()
        if session_id:
            add_database(session_id)
        return

    payload = {
        "token": setup_token,
        "user": {
            "first_name": MB_ADMIN_FIRST_NAME,
            "last_name": MB_ADMIN_LAST_NAME,
            "email": MB_ADMIN_EMAIL,
            "password": MB_ADMIN_PASSWORD
        },
        "prefs": {
            "allow_tracking": False,
            "site_name": "BI Mini Project"
        },
        "database": {
            "engine": "postgres",
            "name": DB_NAME,
            "details": {
                "host": DB_HOST,
                "port": DB_PORT,
                "dbname": DB_NAME,
                "user": DB_USER,
                "password": DB_PASSWORD
            }
        }
    }
    
    try:
        r = requests.post(f"{METABASE_URL}/api/setup", json=payload)
        if r.status_code == 200:
            print("Metabase setup complete.")
            print(f"Login with: {MB_ADMIN_EMAIL} / {MB_ADMIN_PASSWORD}")
        else:
            print(f"Setup failed: {r.text}")
    except Exception as e:
        print(f"Error during setup: {e}")

def login():
    payload = {
        "username": MB_ADMIN_EMAIL,
        "password": MB_ADMIN_PASSWORD
    }
    try:
        r = requests.post(f"{METABASE_URL}/api/session", json=payload)
        if r.status_code == 200:
            return r.json()['id']
    except:
        pass
    print("Failed to login to Metabase.")
    return None

def add_database(session_id):
    headers = {"X-Metabase-Session": session_id}
    # Check if DB exists
    current_dbs = requests.get(f"{METABASE_URL}/api/database", headers=headers).json()
    for db in current_dbs:
        if db['name'] == DB_NAME:
            print(f"Database {DB_NAME} already added.")
            return

    payload = {
        "engine": "postgres",
        "name": DB_NAME,
        "details": {
            "host": DB_HOST,
            "port": DB_PORT,
            "dbname": DB_NAME,
            "user": DB_USER,
            "password": DB_PASSWORD
        }
    }
    
    r = requests.post(f"{METABASE_URL}/api/database", json=payload, headers=headers)
    if r.status_code == 200:
        print(f"Database {DB_NAME} added to Metabase.")
    else:
        print(f"Failed to add database: {r.text}")

if __name__ == "__main__":
    if wait_for_metabase():
        setup_metabase()
