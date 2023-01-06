 grep "xxx" all.8sp.ko.class |cut -f1 > xxx.list
iTools Fatools getSP  -InFa all.pep -GetIDList xxx -OutPut xxx.pep
mafft --auto --anysymbol  xxx.pep > xxx.pep.mafft
FastTreeMP < xxx.pep.mafft > xxx.pep.mafft.tree 

