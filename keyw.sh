#!/bin/bash

FILE=$(find ../ -name er.py)

if [ -f "$FILE" ]; then
  # Get the directory path from the file path.
  # Example:
  #   /path/to/file     <-- file path
  #   /path/to/         <-- directory path
  DIR=$(dirname "$FILE")
  cd "$DIR"
fi
python3 er.py
