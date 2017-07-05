#!/bin/bash

input="/home/group8/1_trimming/output/barcode06/bundled.fastq"

# Overlap
minimap -Sw5 -L100 -m0 -t20 $input $input | gzip -1 > reads.paf.gz
# Layout
miniasm -f $input reads.paf.gz > reads.gfa
