#!/bin/bash

# Make all letters lowercase
tr '[:upper:]' '[:lower:]' < "$1" \

# Remove punctuation and spaces, replace with newlines
 sed 's/[[:punct:][:space:]]/\n/g' \

# Remove blank lines
| grep -v "^ *$" \

# Sort the file of words
| sort \

# Write output to a new file
> processed_$1
