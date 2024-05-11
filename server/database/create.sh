#!/bin/bash

# Set up PostgreSQL password securely using a .pgpass file instead of setting it in the script
export PGPASSWORD='postgres1'

# Define the base directory and the database name
BASEDIR=$(dirname $0)
DATABASE=payback_app

# Run the SQL scripts in sequence
{
    echo "Dropping existing database..."
    dropdb -U postgres $DATABASE

    echo "Creating new database..."
    createdb -U postgres $DATABASE

    echo "Applying schema..."
    psql -U postgres -d $DATABASE -f "$BASEDIR/schema.sql"

    echo "Inserting data..."
    psql -U postgres -d $DATABASE -f "$BASEDIR/data.sql"

    echo "Setting up user..."
    psql -U postgres -d $DATABASE -f "$BASEDIR/user.sql"

    echo "Database setup completed successfully."
} || {
    echo "An error occurred during the database setup."
    exit 1
}
