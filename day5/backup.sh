#!/bin/bash
#
#
<<readme 
   this is a script for backup with 5 day rotation
   
Useage:
      ./backuo.sh <path yoyou sourch> <path to your backup folder
readme


function display_usege
{
	echo "useage: ./backup.sh <path to your source> <path to your backup folder>"
}


if [ $# -eq 0 ]; then
	 display_usege

fi

source_dir=$1
backup_dir=$2
timestamp=$(date '+%Y-%m-%d-%H-%M-%S')

function create_backup
{
       zip -r "${backup_dir}/backup_${timestamp}.zip" "${source_dir}"

       if [$? -eq 0 ]; then
	     echo "backup generated successfully for ${timestamp}"
       fi
}


create_backup

