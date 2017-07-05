#/bin/bash


#Rscript ~/tools/minion_qc/minion_QC.R /home/data/basecalled/FAH14037/sequencing_summary.txt ./

folder="/home/data/basecalled/FAH14037/workspace/"
output="/home/group8/2_QC/output"

mkdir -p $output
ls $folder

cd $folder

for barcode in ./* ; do

        bc=`basename $barcode`
        echo $bc

        mkdir -p "$output/$bc"

        cd $barcode

        poretools stats ./ > $output/$bc.log &

        cd $folder
done

