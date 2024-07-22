#!/bin/bash

FILE=$(find ./scripts/EN-RU-keyboard/ -name main.py)

if [ -f "$FILE" ]; then
  # Get the directory path from the file path.
  # Example:
  #   /path/to/file     <-- file path
  #   /path/to/         <-- directory path
  DIR=$(dirname "$FILE")
  cd "$DIR"
  python3 main.py
fi
