#!/bin/sh

if [ "$1" = "neofetch" ]
then
    bash neofetch
elif [ "$1" = "keep" ]
then
    bash
else
    cat demo.txt
    echo "hello $1"
fi