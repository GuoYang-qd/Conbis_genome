soap -a gill1_1.clean.fq.gz -b gill1_2.clean.fq.gz -D shellr2.pilon.fasta.index -o RemoveHost.pe -2 RemoveHost.se -m 100 -x 1000 -v 10 -r 1 -l 35 -M 4 -p 48 -s 35 2>RemoveHost.log
sed 's/\/[1,2].*//' RemoveHost.pe RemoveHost.se |sort |uniq >RemoveHost.soap.filter.list
zcat gill1_1.clean.fq.gz |awk 'BEGIN{while (getline a < "RemoveHost.soap.filter.list")arr[a] = 1}{getline seq;getline plus;getline qual;name = $0}{sub(/\/.*/,"",$0);sub(/@/,"",$0)}{if ($0 in arr == 0) print name "\n" seq "\n" plus "\n" qual }' >RemoveHost.1.fq
zcat gill1_2.clean.fq.gz |awk 'BEGIN{while (getline a < "RemoveHost.soap.filter.list")arr[a] = 1}{getline seq;getline plus;getline qual;name = $0}{sub(/\/.*/,"",$0);sub(/@/,"",$0)}{if ($0 in arr == 0) print name "\n" seq "\n" plus "\n" qual }' >RemoveHost.2.fq
gzip -f RemoveHost.1.fq RemoveHost.2.fq
#rm RemoveHost.pe RemoveHost.se RemoveHost.soap.filter.list
