#!/bin/bash

DOWNLOAD_DIRECTORY=$1
SEARCH_TERM=$2
NUM_PICS=$3

echo $1 $2 $3

docker run -v ~/$DOWNLOAD_DIRECTORY:/tmp/ webstar34/imagedownloader:1.0.0 googleimagesdownload --chromedriver /usr/bin/chromedriver -k "$SEARCH_TERM" -l $NUM_PICS -o /tmp/
