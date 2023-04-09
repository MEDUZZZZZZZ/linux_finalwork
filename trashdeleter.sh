#!/bin/bash
echo "Starting search and exicution"
if [ -d $1 ]
then
  find $1 -name "*.tmp" -delete
  find $1 -name "*.backup" -delete
  find $1 -name "*.bak" -delete
  find $1 -name "*.txt" -delete
  echo "All .tmp , .backup, .bak files delited from $1"
else
  echo "Input dir is not exist"
  exit 2
fi
