#!/bin/bash

echo "File path:"
read path

if [ -f "$path" ]; then
    echo "The file was found in the specified path."
else
    echo "The file wasn't found in the specified path."
fi
