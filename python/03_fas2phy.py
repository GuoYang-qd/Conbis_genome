#!/usr/bin/env python3

import os
import sys
sys.path.append('~/USER/hankai/software/repositories')
from component import SeqIO

r = open(sys.argv[1])
tmpdict = {}
for seqid, seq in SeqIO.parse(r):
    seqid = seqid.split()[0]
    tmpdict[seqid] = seq
r.close()

seqnum = len(tmpdict)
seqlen = [len(x) for x in tmpdict.values()][0]
sys.stdout.write('  {} {}\n'.format(seqnum, seqlen))
for seqid, seq in tmpdict.items():
    sys.stdout.write('  '.join([seqid, seq]) + '\n')


