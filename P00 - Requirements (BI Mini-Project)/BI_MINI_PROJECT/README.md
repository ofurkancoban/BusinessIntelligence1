# BI Mini Project

Dockerized Business Intelligence environment with PostgreSQL and Metabase.

## Setup

1.  **Start**: Run the startup script:
    ```bash
    ./start.sh
    ```

## What happens?

1.  **Docker Compose** starts PostgreSQL and Metabase.
2.  **Data Importer**:
    -   Automatically downloads the dataset ZIP file from the configured URL.
    -   Extracts the ZIP and imports any found CSV files into PostgreSQL tables.
3.  **Metabase Setup**: An automation script configures Metabase with an admin user and connects it to the PostgreSQL database.

## Access

-   **Metabase**: [http://localhost:3000](http://localhost:3000)
-   **Admin Email**: `admin@admin.com`
-   **Admin Password**: `Password123!`
