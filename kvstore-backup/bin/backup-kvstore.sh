#!/usr/bin/env bash
#
#

# Stores sessionkey in $REPLY, assumes 'passAuth=admin' in inputs.conf
read

NOW=$(date +%Y%m%dT%H%M%S)
BACKUP_FILE=kvstorebackup-$NOW
curl -H "Authorization: Splunk $REPLY" -k https://localhost:8089/services/kvstore/backup/create -d "archiveName=$BACKUP_FILE" -X POST >/dev/null 2>&1

