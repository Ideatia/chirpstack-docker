#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname="sensor-monitor" <<-EOSQL
    create extension pg_trgm;
    create extension hstore;
EOSQL
