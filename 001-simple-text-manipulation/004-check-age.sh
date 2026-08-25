#!/bin/bash

echo "What is your age?"
read age

if [ $age -gt 18 ]
then
    echo "You are an adult."
else
    echo "You aren't an adult."
fi
