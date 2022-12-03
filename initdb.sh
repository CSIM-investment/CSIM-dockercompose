#!/usr/bin/env bash
psql "postgres://$POSTGRES_USER:$POSTGRES_PASSWORD@$POSTGRES_HOST/$POSTGRES_DB?sslmode=disable" <<-EOSQL
SELECT 'CREATE DATABASE csim' WHERE NOT EXISTS (SELECT FROM pg_database WHERE datname = 'csim')\gexec
EOSQL
