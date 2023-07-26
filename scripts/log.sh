#!/bin/bash

log_file=$DOTFILES/logs/startup.log

if [ ! -e $log_file ]; then
    touch $log_file
fi

log_date=$(date)
echo "$log_date: $1" >> $log_file
