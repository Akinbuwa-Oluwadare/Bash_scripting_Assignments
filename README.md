# ETL Project

## Overview

This project includes Bash scripts to:
- Download and transform a CSV file.
- Move CSV and JSON files between folders.
- Load CSV files into a PostgreSQL database.
- Run SQL queries on the data.

## How to Use

1. **Run the ETL Script:** Execute `CDE_ETL_PROCESS.sh` to perform the ETL process.
2. **Move Files:** Execute `moving_json_and_csv_files.BAT` to move all CSV and JSON files.
3. **cron Job Scheduler:** Use `Crontab_Scheduler.bat` to schedule the cron job to run the ETL script daily at midnight.
4. **Run SQL Queries:** Use the `posey_sql_assignment.sql` file to run queries in PostgreSQL.

