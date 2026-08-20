#!/bin/bash

num_files=(1 2 3 4 5)

cd 000-trash
mkdir create-files
cd create-files

for num in ${num_files[*]}; do
    touch "file_$num"
    echo "file_$num was created."
done