unset PERL5LIB
perl  run_r8s.pl final.tre in.desc --cali calibration.txt -phyfile final.tre -outdir out_r8s/
perl run_mcmctree.pl single-copy.cds.phy.4d out_r8s/cali.tree -desc in.desc  -outdir out_mcmc_4d
