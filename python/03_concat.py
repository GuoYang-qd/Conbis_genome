#!/usr/bin/env python3

import os
import sys
sys.path.append('~/hankai/software/repositories')
from component import SeqIO

if __name__ == '__main__':

    alignments = []
    r = open(sys.argv[1])
    for line in r:
        alignments.append(line.split()[-1])
    r.close()

    start = 1
    fas = {}
    for mafft in alignments:
        basename = os.path.basename(mafft)
        lens = set()
        r = open(mafft)
        for seqid, seq in SeqIO.parse(r):
            tip = seqid.split('_')[-1]
            lens.add(len(seq))
            if fas.get(tip):
                fas[tip] += seq
            else:
                fas[tip] = seq
        r.close()
        if len(lens) == 1:
            end = list(lens)[0] + start - 1
            sys.stderr.write('{} = {}-{}\n'.format(basename, start, end))
            start = end + 1
        else:
            sys.stderr.write('{} = {}\n'.format(basename, 'error sequences length'))
    
    for seqid, seq in fas.items():
        rec = SeqIO.recode(seqid, seq)
        sys.stdout.write(rec)

