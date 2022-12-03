SELECT ‘CREATE DATABASE csim’ WHERE NOT EXISTS (SELECT FROM pg_database WHERE datname = ‘csim’)\gexec
