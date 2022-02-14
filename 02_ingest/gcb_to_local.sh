#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: ./gcb_to_local.sh destination-local-path-name"
    exit
fi

BUCKET=gcp-practice-bucket
FROM=gs://$BUCKET/flights/raw
CMD="pwd"
echo $(CMD)

CMD="gsutil cp ${FROM} $(CMD)"
echo $CMD

