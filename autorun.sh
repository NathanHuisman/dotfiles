#!/usr/bin/env bash

function run {
  if ! pgrep -f $1 ;
  then
    $@&
  fi
}

# 
# Autorun programs
# 
# To add programs to autostart, simply append run program [some arguments] to autorun.sh.
# The run function checks whether there already is an instance of program running and only runs program if there is none.
#
run picom -b -c --backend glx 
