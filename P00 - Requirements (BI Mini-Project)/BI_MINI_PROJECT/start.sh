#!/bin/bash


echo "Starting Docker services..."
docker compose up -d --build

echo "Waiting for data import to complete (watching logs)..."
# We can't easily wait for a specific container to exit with 'up -d', but we can follow logs
# For simplicity, we'll just let it run in the background. The user can check logs.

echo "Running Metabase setup automation..."
# Run the setup script using the data_importer container environment (using a fresh one-off container to ensure clean state)
docker compose run --rm --entrypoint "sh -c 'pip install requests && python /scripts/setup_metabase.py'" data_importer

echo "---------------------------------------------------"
echo "Setup complete!"
echo "Metabase URL: http://localhost:3000"
echo "Login credentials (if auto-setup worked):"
echo "  Email:    admin@admin.com"
echo "  Password: Password123!"
echo "---------------------------------------------------"
