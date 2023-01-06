SOAPnuke filter -l 20 -q 0.2 -n 0.05 -Q 2 -d -c 0  -5 0 -7 1 -o gill1 -1 gill1_1.fq.gz -2 gill1_2.fq.gz -C gill1_1.clean.fq.gz -D gill1_2.clean.fq.gz -f AAGTCGGATCGTAGCCATGTCGTTCTGTGAGCCAAGGAGTTG -r AAGTCGGAGGCCAAGCGGTCTTAGGAAGACAA
/share/app/FastQC-0.11.3/fastqc -o gill1/ -f fastq gill1_1.clean.fq.gz gill1_2.clean.fq.gz
perl pie.pl
Rscript pie.R
