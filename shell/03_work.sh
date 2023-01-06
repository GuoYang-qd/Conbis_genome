#!/bin/bash

indir=$cwd/00.data
outdir=$cwd/output
prefix=TIAN

sonicparanoid -i $indir -o $outdir -p $prefix -t 10 -db $cwd/mmseqs2db -op -mgs 1000 -d
ln -s $outdir/runs/$prefix/ortholog_groups/single-copy_groups.tsv

python3 sonicparanoid_mafft.py single-copy_groups.tsv all.pep all.cds $PWD/mafftdir > mafft.sh

 le mafft.sh|cut -f 1-6 -d ' ' > pepmafft.sh
 python3 concat.py pepmafft.sh > single-copy.pep.fas 2> concat.log
 python3 fas2phy.py single-copy.pep.fas > single-copy.pep.phy
