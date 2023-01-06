#step1 generate fasta bam2fa
 ~/menglingfeng/software/newenvironment/bin/bam2fasta -c 9 -o shellfasta ~/menglingfeng/project/shell/00.data/r64032_200312_001/4_D01/m64032_200315_082219.subreads.bam
~/menglingfeng/software/newenvironment/bin/bam2fasta  -c 9 -o shellfastacell2 ~/menglingfeng/project/shell/00.data/1_A01/m64061_200318_021115.subreads.bam

#step2 shasta 
shasta=.../software/Assembler/shasta/shasta-OldLinux-0.4.0
data1=/dellfsqd2/ST_OCEAN/USER/menglingfeng/project/shell/01.bam2fq/shellfasta.fasta
data2=/dellfsqd2/ST_OCEAN/USER/menglingfeng/project/shell/01.bam2fq/shellfastacell2.fasta
$shasta --input $data1 $data2 --config PacBio-CLR-Dec2019.conf --threads 16  

#config file #PacBio-CLR-Dec2019.conf
#[Reads]
# Use this option to adjust coverage.
minReadLength = 10000

[ReadGraph]
maxAlignmentCount = 50 #20

[Assembly]
consensusCaller = Modal

#step3 polish * 2 
bowtie2-build Assembly.fasta shellshasta 
bowtie2 -p 23 --sensitive -x shellshasta -1 .../wgs/01.filter/CL100160701_L02/CL100160701_L02_read_1.clean.fq.gz  -2 .../wgs/01.filter/CL100160701_L02/CL100160701_L02_read_2.clean.fq.gz | .../samtools-1.9/bin/samtools view -Sb - | .../samtools-1.9/bin/samtools sort -m 10G -T LIANHA -o LIANHA.sort.bam
.../samtools-1.9/bin/samtools index -b -@ 43 LIANHA.sort.bam 
java -Xmx200G -jar pilon-1.22.jar --unpaired LIANHA.sort.bam  --genome Assembly.fasta --output shellshasta.pilon.fa --outdir ./ --chunksize 500000000 --diploid --changes --threads 24 --verbose

bowtie2-build shellshasta.pilon.fa.fasta shellr2
bowtie2 -p 23 --sensitive -x shellr2 -1 .../wgs/01.filter/CL100160701_L02/CL100160701_L02_read_1.clean.fq.gz  -2 .../wgs/01.filter/CL100160701_L02/CL100160701_L02_read_2.clean.fq.gz | .../samtools-1.9/bin/samtools view -Sb - | .../samtools-1.9/bin/samtools sort -m 10G -T LIANHA -o LIANHA.sort.bam
.../samtools-1.9/bin/samtools index -b -@ 43 LIANHA.sort.bam 
java -Xmx100G -jar pilon-1.22.jar --unpaired LIANHA.sort.bam  --genome shellshasta.pilon.fa.fasta --output shellr2.pilon --outdir ./ --chunksize 500000000 --diploid --changes --threads 24 --verbose


