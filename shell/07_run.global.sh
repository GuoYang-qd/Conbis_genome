#!.../CAFE/bin/cafe
tree ((CONBIS:466,(ARCMAR:451,LUTRHY:451):15):27,(MIZYES:447,((BATPLA:115,MODPHI:115):316,(CRAGIG:389,PINFUC:389):43):15):46)
load -i in.tab -p 0.05 -t 4 -r 10000 -filter -l  cafe_4.0/global.log
lambda -s 
report global.out
