#!/bin/bash

# Set LC_ALL environment variable to ensure English sort order
export LC_ALL=C

# Read the chunk file as input
input_file="$1"

# Convert all letters to lowercase
tr '[:upper:]' '[:lower:]' < "$input_file" |
# Remove punctuation and replace with whitespace
sed 's/[:punct:]/ /g' |
# Replace tabs and spaces with newlines
sed 's/[[:space:]]+/\n/g' |
# Remove blank lines
grep -v '^[[:space:]]*$' |
# Sort words
sort > "$input_file".sorted
