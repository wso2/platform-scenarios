#!/usr/bin/env bash

mysql_flags="-u root --socket=/tmp/mysql.sock"

RESULT=`mysql ${mysql_flags} --skip-column-names -e "SHOW DATABASES LIKE 'credit_db'"`
if [ "$RESULT" == "credit_db" ]; then
    echo "Databases exist, SQL script execution skipped"
    return
fi

echo "Executing SQL scripts..."
cat /tmp/scripts/*.sql  > /tmp/scripts/all-files.sql
mysql ${mysql_flags} <<EOSQL
    source /tmp/scripts/all-files.sql
EOSQL