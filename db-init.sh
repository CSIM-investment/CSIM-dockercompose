#!/bin/bash
set -e
export PGPASSWORD=$POSTGRES_PASSWORD;
psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
    SELECT 'CREATE DATABASE csim'
    WHERE NOT EXISTS (SELECT FROM pg_database WHERE datname = 'csim')
EOSQL