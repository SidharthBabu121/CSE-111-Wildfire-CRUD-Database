#!/bin/bash

db="data.sqlite"
rm -f ${db}
touch ${db}

sqlite3 ${db} < data.sql
