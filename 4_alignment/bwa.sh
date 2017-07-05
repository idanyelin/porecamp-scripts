#!/bin/bash

#input file
input="/home/group8/1_trimming/output/barcode06/bundled.fastq"

#indexing the reference file
samtools index hepc_ref.fasta

#select 1k reads and output in a new fastq
cat $input | head -n 4000 > reads.fastq

#alginment
bwa mem -t 20 -x ont2d hepc_ref.fasta reads.fastq > hepc.sam

#convert sam to bam
samtools view -bS hepc.sam > hepc.bam

#sort bamfile
samtools sort hepc.bam > hepc.sorted.bam

#index bamfile
samtools index hepc.sorted.bam
