#!/bin/bash

folder="/home/group8/1_trimming/output"
output="/home/group8/3_kraken/output"

mkdir -p $output
ls $folder

cd $folder

for barcode in ./* ; do

        bc=`basename $barcode`
        echo $bc

        cd $barcode

	cat ./*.fastq > bundled.fastq

	kraken --threads 12  --fastq-input ./bundled.fastq | kraken-report > $output/${bc}_kraken.log

        cd $folder
done

