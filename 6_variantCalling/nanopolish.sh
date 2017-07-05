#!/bin/bash

input="/home/group8/1_trimming/output/barcode06/bundled.fastq"

nanopolish variants \
	--reads $input \
	--bam ../4_alignment/hepc.sorted.bam \
	--genome ../4_alignment/hepc_ref.fasta \
	--ploidy 1 > hepc.vcf
