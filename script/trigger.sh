#!/bin/bash

key=$1
event=$2
url="https://maker.ifttt.com/trigger/${event}/with/key/${key}"

curl -s -X POST "${url}" -d "value1=$3" -d "value2=$4" -d "value3=$5"
#
