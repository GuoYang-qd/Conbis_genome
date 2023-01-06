plotdf <- read.csv("pfamimmune.tsv",sep='\t',stringsAsFactors = FALSE)
cdf <- data.frame(plotdf[,-1], row.names = plotdf[,1])
cdf
library(ggplot2)

library(pheatmap)
library(RColorBrewer)
cc = colorRampPalette(rev(brewer.pal(n=11, name="PRGn")))
pdf("pfamimmune.pdf",width=8,height=10)
x = pheatmap(cdf,fontsize = 7,color = cc(100),scale = "row",border="white",na_col = "grey",
                          cluster_rows = F,cluster_cols = F,
                                       show_rownames = T,show_colnames = T,
                                                    treeheight_row = 10,treeheight_col = 10,
                                                                 cellheight = 10,
                                                                              cellwidth = 10,angle_col = 45,
                                                                                           display_numbers = F,legend = T) 
dev.off()
