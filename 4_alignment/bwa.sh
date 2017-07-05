#!/bin/bash

input="/home/group8/1_trimming/output/barcode06/bundled.fastq"

samtools index hepc_ref.fasta

cat $input | head -n 4000 > reads.fastq

bwa mem -t 20 -x ont2d hepc_ref.fasta reads.fastq > hepc.sam

samtools view -bS hepc.sam > hepc.bam

samtools sort hepc.bam > hepc.sorted.bam

samtools index hepc.sorted.bam
