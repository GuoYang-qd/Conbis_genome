#!/usr/bin/env python3

import os
import sys

sys.path.append('~/hankai/software/repositories')
from component import SeqIO

class FAS(dict):
    def __init__(self, fasta_file, pep=True):
        r = open(fasta_file)
        for seqid, seq in SeqIO.parse(r):
            if pep:
                seq = seq.replace('U', 'X')
                seq = seq.rstrip('X')
            self[seqid.split()[0]] = seq
        r.close()

if __name__ == '__main__':

    file_num = 0
    dir_num = 1
    hcluster = sys.argv[1]
    pep = FAS(sys.argv[2], pep=True)
    cds = FAS(sys.argv[3], pep=False)
    outdir = sys.argv[4]
    try:
        target = sys.argv[5]
    except:
        target = None
    else:
        target = []
        r = open(sys.argv[5])
        for line in r:
            target.append(line.split()[0])
        r.close()
    r = open(hcluster)
    for line in r:
        if line.startswith('group_id'):
            continue
        lst = line.split()
        fam_id = lst[0]
        if target and fam_id not in target:
            continue
        genes = lst[1:]
        if '*' in genes:
            continue
        subdir = os.path.join(outdir, fam_id)
        if not os.path.exists(subdir):
            os.makedirs(subdir)
        pf = os.path.join(subdir, '{}.pep'.format(fam_id))
        cf = os.path.join(subdir, '{}.cds'.format(fam_id))
        p = open(pf, 'w')
        c = open(cf, 'w')
        for gene in genes:
            pseq, cseq = pep[gene], cds[gene]
            prec = SeqIO.recode(gene, pseq)
            crec = SeqIO.recode(gene, cseq)
            p.write(prec)
            c.write(crec)
        p.close()
        c.close()
        cmd = '/home/hankai/bin/mafft --anysymbol --auto {} > {}.mafft && ' \
                '/dellfsqd2/ST_OCEAN/USER/hankai/software/Aligner/pal2nal.v14/pal2nal.pl' \
                ' -output fasta {}.mafft {} > {}.mafft\n'.format(pf, pf, pf, cf, cf)
        sys.stdout.write(cmd)
    r.close()

