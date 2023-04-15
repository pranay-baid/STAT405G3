#!/bin/bash

# Download and extract the shakespeare.tar file
wget https://pages.stat.wisc.edu/~jgillett/DSCP/CHTC/wordCounting/shakespeare.tar
tar -xf shakespeare.tar

# Concatenate all the plays into one large file
cat shakespeare/* > shakespeare_all.txt

# Break the large file into 5 smaller files
split -n 5 shakespeare_all.txt shakespeare_chunk_
