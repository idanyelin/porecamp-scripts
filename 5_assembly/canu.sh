#!/bin/bash

input="/home/group8/1_trimming/output/barcode06/bundled.fastq"

canu -p hepc -d hepc1 genomeSize=9k -nanopore-raw $input

#usage: canu [-version] \
#            [-correct | -trim | -assemble | -trim-assemble] \
#            [-s <assembly-specifications-file>] \
#             -p <assembly-prefix> \
#             -d <assembly-directory> \
#             genomeSize=<number>[g|m|k] \
#            [other-options] \
#            [-pacbio-raw | -pacbio-corrected | -nanopore-raw | -nanopore-corrected] *fastq

