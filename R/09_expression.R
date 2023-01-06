plotdf <- read.csv("s7plot.tsv",sep='\t',stringsAsFactors = FALSE)
library(dplyr)
plotdf<-unique(plotdf)
cdf <- data.frame(plotdf[,-1], row.names = plotdf[,1])
library(ggplot2)

library(pheatmap)
library(RColorBrewer)
cc = colorRampPalette(rev(brewer.pal(n=11, name="RdBu")))
pdf("s7transporter.pdf",width=15,height=5)
#pdf("gill2fold.pdf",width=10,height=20)

x=pheatmap(cdf,fontsize = 5,color = cc(100),scale = "row",border="white",na_col = "grey",
                      cluster_rows = F,cluster_cols = F,
                                 show_rownames = T,show_colnames = T,
                                            treeheight_row = 6,treeheight_col = 10,
                                                       cellheight = 5,
                                                                  cellwidth = 10,angle_col = 45,
                                                                             display_numbers = F,legend = T) 

dev.off()

s8df <- read.csv("s8plot.tsv",sep='\t',stringsAsFactors = FALSE)
s8df<-unique(s8df)
s8cdf <- data.frame(s8df[,-1], row.names = s8df[,1])
pdf("s8.pdf",width=10,height=10)

x=pheatmap(s8cdf,fontsize = 5,color = cc(100),scale = "row",border="white",na_col = "grey",
                      cluster_rows = F,cluster_cols = F,
                                 show_rownames = T,show_colnames = T,
                                            treeheight_row = 6,treeheight_col = 10,
                                                       cellheight = 5,
                                                                  cellwidth = 10,angle_col = 45,
                                                                             display_numbers = F,legend = T) 

dev.off()

s9bdf <- read.csv("s9bplot.tsv",sep='\t',stringsAsFactors = FALSE)
s9bdf<-unique(s9bdf)
s9bcdf <- data.frame(s9bdf[,-1], row.names = s9bdf[,1])
pdf("s9b.pdf",width=10,height=10)

x=pheatmap(s9bcdf,fontsize = 5,color = cc(100),scale = "row",border="white",na_col = "grey",
                      cluster_rows = F,cluster_cols = F,
                                 show_rownames = T,show_colnames = T,
                                            treeheight_row = 6,treeheight_col = 10,
                                                       cellheight = 5,
                                                                  cellwidth = 10,angle_col = 45,
                                                                             display_numbers = F,legend = T) 

dev.off()

s10df <- read.csv("s10plot.tsv",sep='\t',stringsAsFactors = FALSE)
s10df<-unique(s10df)
s10cdf <- data.frame(s10df[,-1], row.names = s10df[,1])
pdf("s10.pdf",width=10,height=10)

x=pheatmap(s10cdf,fontsize = 5,color = cc(100),scale = "row",border="white",na_col = "grey",
                      cluster_rows = F,cluster_cols = F,
                                 show_rownames = T,show_colnames = T,
                                            treeheight_row = 6,treeheight_col = 10,
                                                       cellheight = 5,
                                                                  cellwidth = 10,angle_col = 45,
                                                                             display_numbers = F,legend = T) 

dev.off()


cc = colorRampPalette(rev(brewer.pal(n=11, name="RdBu")))
mucin2df <- read.csv("mucin-2exp.txt",sep='\t',stringsAsFactors = FALSE)
mucin2df<-unique(mucin2df)
mucin2cdf <- data.frame(mucin2df[,-1], row.names = mucin2df[,1])
pdf("mucin2df.pdf",width=10,height=10)

x=pheatmap(mucin2cdf,fontsize = 5,color = cc(100),scale = "row",border="white",na_col = "grey",
                      cluster_rows = T,cluster_cols = F,
                                 show_rownames = F,show_colnames = T,
                                            treeheight_row = 6,treeheight_col = 10,
                                                       cellheight = 1,
                                                                  cellwidth = 10,angle_col = 45,
                                                                             display_numbers = F,legend = T) 

dev.off()

mucin4df <- read.csv("mucin_4_exp.txt",sep='\t',stringsAsFactors = FALSE)
mucin4df<-unique(mucin4df)
mucin4cdf <- data.frame(mucin4df[,-1], row.names = mucin4df[,1])
pdf("mucin4df.pdf",width=10,height=10)

x=pheatmap(mucin4cdf,fontsize = 5,color = cc(100),scale = "row",border="white",na_col = "grey",
                      cluster_rows = T,cluster_cols = F,
                                 show_rownames = F,show_colnames = T,
                                            treeheight_row = 6,treeheight_col = 10,
                                                       cellheight = 1,
                                                                  cellwidth = 10,angle_col = 45,
                                                                             display_numbers = F,legend = T) 

dev.off()
