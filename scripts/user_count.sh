#!/bin/bash

# This script comes from ~dphiffer
count=`users | cut -d' ' --output-delimiter=$'\n' -f1- | uniq  | wc -l`
date=`date "+%Y-%m-%d %H:%M:%S"`
echo "\"$date\",$count"
