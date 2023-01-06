jellyfish count -m 17 -s 8G -t 20 -o shell.counts.jf --canonical <(zcat .../wgs/01.filter/CL100160701_L02//CL100160701_L02_read_1.clean.fq.gz) <(zcat .../wgs/01.filter/CL100160701_L02//CL100160701_L02_read_2.clean.fq.gz)
jellyfish histo -h 100000000 -t 20 -o shell.fa.histo  shell.counts.jf
Rscript genomescope.R shell.fa.histo 17 100 ./Jellyfish
