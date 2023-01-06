mkdir K10089
cd K10089
grep K10089 ../Conchocele_cf.bisecta.pep.KEGG.blast |cut -f1 > K10089.Cbi.list
less K10089.Cbi.list |grep -wFf - Nve_Cbi.blast |cut -f2 > K10089.Nve.list
iTools Fatools getSP -GetIDList K10089.Nve.list -InFa nv.pep -OutPut K10089.Nve.pep
iTools Fatools getSP -GetIDList K10089.Cbi.list -InFa Conchocele_cf.bisecta.pep -OutPut K10089.Cbi.pep
gunzip *gz
cat K10089.*pep >K10089.all.pep
# mafft --auto --anysymbol K10089.all.pep > K10089.all.pep.mafft
#FastTreeMP < K10089.all.pep.mafft > K10089.all.pep.mafft.tree
cd ..
mkdir K01809
cd K01809
grep K01809 ../Conchocele_cf.bisecta.pep.KEGG.blast |cut -f1 > K01809.Cbi.list
less K01809.Cbi.list |grep -wFf - Nve_Cbi.blast |cut -f2 > K01809.Nve.list
iTools Fatools getSP -GetIDList K01809.Nve.list -InFa nv.pep -OutPut K01809.Nve.pep
iTools Fatools getSP -GetIDList K01809.Cbi.list -InFa Conchocele_cf.bisecta.pep -OutPut K01809.Cbi.pep
gunzip *gz
cat K01809.*pep >K01809.all.pep
# mafft --auto --anysymbol K01809.all.pep > K01809.all.pep.mafft
#FastTreeMP < K01809.all.pep.mafft > K01809.all.pep.mafft.tree
cd ..
mkdir K04994
cd K04994
grep K04994 ../Conchocele_cf.bisecta.pep.KEGG.blast |cut -f1 > K04994.Cbi.list
less K04994.Cbi.list |grep -wFf - Nve_Cbi.blast |cut -f2 > K04994.Nve.list
iTools Fatools getSP -GetIDList K04994.Nve.list -InFa nv.pep -OutPut K04994.Nve.pep
iTools Fatools getSP -GetIDList K04994.Cbi.list -InFa Conchocele_cf.bisecta.pep -OutPut K04994.Cbi.pep
gunzip *gz
cat K04994.*pep >K04994.all.pep
# mafft --auto --anysymbol K04994.all.pep > K04994.all.pep.mafft
#FastTreeMP < K04994.all.pep.mafft > K04994.all.pep.mafft.tree
cd ..
mkdir K01365
cd K01365
grep K01365 ../Conchocele_cf.bisecta.pep.KEGG.blast |cut -f1 > K01365.Cbi.list
less K01365.Cbi.list |grep -wFf - Nve_Cbi.blast |cut -f2 > K01365.Nve.list
iTools Fatools getSP -GetIDList K01365.Nve.list -InFa nv.pep -OutPut K01365.Nve.pep
iTools Fatools getSP -GetIDList K01365.Cbi.list -InFa Conchocele_cf.bisecta.pep -OutPut K01365.Cbi.pep
gunzip *gz
cat K01365.*pep >K01365.all.pep
# mafft --auto --anysymbol K01365.all.pep > K01365.all.pep.mafft
#FastTreeMP < K01365.all.pep.mafft > K01365.all.pep.mafft.tree
cd ..
mkdir K01363
cd K01363
grep K01363 ../Conchocele_cf.bisecta.pep.KEGG.blast |cut -f1 > K01363.Cbi.list
less K01363.Cbi.list |grep -wFf - Nve_Cbi.blast |cut -f2 > K01363.Nve.list
iTools Fatools getSP -GetIDList K01363.Nve.list -InFa nv.pep -OutPut K01363.Nve.pep
iTools Fatools getSP -GetIDList K01363.Cbi.list -InFa Conchocele_cf.bisecta.pep -OutPut K01363.Cbi.pep
gunzip *gz
cat K01363.*pep >K01363.all.pep
# mafft --auto --anysymbol K01363.all.pep > K01363.all.pep.mafft
#FastTreeMP < K01363.all.pep.mafft > K01363.all.pep.mafft.tree
cd ..
mkdir K08488
cd K08488
grep K08488 ../Conchocele_cf.bisecta.pep.KEGG.blast |cut -f1 > K08488.Cbi.list
less K08488.Cbi.list |grep -wFf - Nve_Cbi.blast |cut -f2 > K08488.Nve.list
iTools Fatools getSP -GetIDList K08488.Nve.list -InFa nv.pep -OutPut K08488.Nve.pep
iTools Fatools getSP -GetIDList K08488.Cbi.list -InFa Conchocele_cf.bisecta.pep -OutPut K08488.Cbi.pep
gunzip *gz
cat K08488.*pep >K08488.all.pep
# mafft --auto --anysymbol K08488.all.pep > K08488.all.pep.mafft
#FastTreeMP < K08488.all.pep.mafft > K08488.all.pep.mafft.tree
cd ..
mkdir K07876
cd K07876
grep K07876 ../Conchocele_cf.bisecta.pep.KEGG.blast |cut -f1 > K07876.Cbi.list
less K07876.Cbi.list |grep -wFf - Nve_Cbi.blast |cut -f2 > K07876.Nve.list
iTools Fatools getSP -GetIDList K07876.Nve.list -InFa nv.pep -OutPut K07876.Nve.pep
iTools Fatools getSP -GetIDList K07876.Cbi.list -InFa Conchocele_cf.bisecta.pep -OutPut K07876.Cbi.pep
gunzip *gz
cat K07876.*pep >K07876.all.pep
# mafft --auto --anysymbol K07876.all.pep > K07876.all.pep.mafft
#FastTreeMP < K07876.all.pep.mafft > K07876.all.pep.mafft.tree
cd ..
mkdir K10591
cd K10591
grep K10591 ../Conchocele_cf.bisecta.pep.KEGG.blast |cut -f1 > K10591.Cbi.list
less K10591.Cbi.list |grep -wFf - Nve_Cbi.blast |cut -f2 > K10591.Nve.list
iTools Fatools getSP -GetIDList K10591.Nve.list -InFa nv.pep -OutPut K10591.Nve.pep
iTools Fatools getSP -GetIDList K10591.Cbi.list -InFa Conchocele_cf.bisecta.pep -OutPut K10591.Cbi.pep
gunzip *gz
cat K10591.*pep >K10591.all.pep
# mafft --auto --anysymbol K10591.all.pep > K10591.all.pep.mafft
#FastTreeMP < K10591.all.pep.mafft > K10591.all.pep.mafft.tree
cd ..
