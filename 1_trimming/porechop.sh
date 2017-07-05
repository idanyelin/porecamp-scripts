#!/bin/bash

folder="/home/data/basecalled/FAH14037/workspace/"
output="/home/group8/1_trimming/output"

mkdir -p $output
ls $folder

cd $folder

for barcode in ./* ; do

	bc=`basename $barcode`
	echo $bc

	mkdir -p "$output/$bc"

	cd $barcode

	for fastq in ./*.fastq ; do

		name=`basename $fastq`

		porechop -i $fastq -o $output/$bc/$name > $output/$bc/$name.log &

	done
	cd $folder
done
