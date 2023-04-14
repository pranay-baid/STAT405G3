#!/bin/bash
set -e

# Define variables
CHUNK_SIZE=5

# Download and extract Shakespeare data
wget https:/https://pages.stat.wisc.edu/~jgillett/DSCP/CHTC/wordCounting/shakespeare.tar -O shakespeare.tar
tar -xf shakespeare.tar

# Concatenate all the plays into one file
cat shakespeare/* > all_plays.txt

# Split the large file into smaller chunks
split -n l/$CHUNK_SIZE all_plays.txt chunk_
