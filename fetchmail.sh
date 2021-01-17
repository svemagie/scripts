#!/bin/bash

ping -c 1 8.8.8.8 2>&1 >/dev/null
if [ $? = 0 ]
  then
    # mpop
    mpop -a -q
    # kill mbsync if stuck
    killall mbsync &>/dev/null
    mbsync -a -q
fi
