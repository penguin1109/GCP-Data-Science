#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: ./gcb_to_local.sh destination-local-path-name"
    exit
fi


BUCKET=gcp-practice-bucket
FROM=gs://$BUCKET/flights/raw
TO=$1

echo "mkdir data"
echo "cd data"
DEST="${TO}/data"
CMD="gsutil cp ${FROM} ${DEST}"
echo $CMD

