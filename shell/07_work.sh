#!/bin/bash
cwd=$PWD

indir=$cwd/00.data
outdir=$cwd/output
prefix=TIAN

sonicparanoid -i $indir -o $outdir -p $prefix -t 10 -db $cwd/mmseqs2db -op -mgs 1000 -d
ln -s $outdir/runs/$prefix/ortholog_groups/single-copy_groups.tsv

python3 sonicparanoid_mafft.py single-copy_groups.tsv all.pep all.cds $PWD/mafftdir > mafft.sh

