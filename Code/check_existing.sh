#!/usr/bin/bash

check_existing()
{
  local target_file="$1" 
  local position=$2 
  local -i waiting=$3 
  local -i sleeping=$4
  echo "trying to find $target_file according to position $position, waiting for $waiting * $sleeping seconds"
  for ((i=1;i<=waiting;i++));
  do
    existing_status=`ls -l $target_file | awk '{path=\$'$position'} END{print path}'`
    if [ -z "$existing_status" ]; then
      echo `date '+%Y-%m-%d %H:%M:%S'` "Still waiting for $target_file" 
    else
      echo `date '+%Y-%m-%d %H:%M:%S'` "Found $target_file succesffuly!" 
      break
    fi
    sleep $sleeping
  done
  
  if [ -z "$existing_status" ]; then
    echo `date '+%Y-%m-%d %H:%M:%S'` "Waiting for a long time, quit!"
    exit 4
  fi
}

check_existing $1 $2 $3 $4