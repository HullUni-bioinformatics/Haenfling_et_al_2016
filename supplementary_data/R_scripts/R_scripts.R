#Revised figures for Haenfling et al. 2016 Mol. Ecol. 
#8th March 2016

#Fig. 2 (Main MS) Site occupancy by basin
#data is in dropbox/manuscript/Revision/Data filed for revision/Basin summaries by lake, which is organised as one sheet per lake and adapted from Basin summary 2-Rev.csv
#input files then created per basin in row format file names XXXXmatrix.csv

par(mfrow=c(2,2))

#change margin sizes to fit axes labels on
#(bottom,left,top,right) default is (5,4,4,2) +0.1 ##was op<-par(mar=c(10,7,4,2) +0.1)
op<-par(mar=c(10,4,4,2) +0.1)

#a) Win North: site occupancy (SO)
#data is formatted and pasted from WINNmatrix.csv
WinNSO<-matrix(c(0.9310,0.7931,0.3448,0.6207,0.8276,0.2759,0.7586,0.7586,0.2069,0.2759,0.7586,0.1379,0.0345,0.0000,0.0000,0.0000,0.0345,0.3793,0.0345,0.0345,0.7931,0.2414,0.1034,0.1724,0.5862,0.1379,0.2759,0.4483,0.0345,0.0345,0.3103,0.1379,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000,0.0000), nrow=2, ncol=20, byrow=TRUE)
WinNSO

op<-par(mar=c(10,4,4,2) +0.1)

barplot(WinNSO,main="a) Windermere North Basin", names.arg=c("P. fluviatilis",	"R. rutilus",	"S. alpinus",	"E. lucius",	"S. trutta", 	"A. anguilla",	"P. phoxinus",	"C. gobio",	"S. salar",	"B. barbatula",	"G. aculeatus", 	"A. brama",	"T. tinca",	"S. erythrophthalmus",	"L. fluviatilis",	"P. marinus",	"C. carpio*",	"G. cernua*",	"L. delineatus*",	"O. eperlanus*"), font.axis=3, beside=TRUE, ylim=c(0,1),
col=c("black","grey"), las=2)
box()##species with an asterisk have not been recorded in the lake previously

title(xlab="Species", cex.lab=1.5, line=9)
title(ylab="Site Occupancy", cex.lab=1.5, line=3)

###add legend

legend(locator(1),c("12S", "CytB"),pch=c(15,15),col=c("black","grey"),cex=1.2)##using legend(locator(1)) allows you to click exact position on graph where you want legend.



#b) WIn S: site occupancy
#data is formatted and pasted from WINSmatrix.csv
WinSSO <-matrix(c(1.0000,0.9333,0.5667,0.7000,0.4667,0.0333,0.7667,0.0000,0.1333,0.3667,0.0333,0.4000,0.1667,0.0333,0.0000,0.0000,0.2667,0.0333,0.0000,0.0000,0.0333,0.9000,0.5333,0.1667,0.2667,0.2667,0.0333,0.7000,0.0000,0.0667,0.1333,0.0000,0.0333,0.0667,0.0000,0.0000,0.0000,0.0000,0.0000,0.0333,0.1000,0.0000), nrow=2, ncol=21, byrow=TRUE)
WinSSO

op<-par(mar=c(10,4,4,2) +0.1)

barplot(WinSSO,main="b) Windermere South Basin", names.arg=c("P. fluviatilis",	"R. rutilus",	"E. lucius",	"S. trutta",	"A. anguilla",	"S. alpinus",	"A. brama",	"T. tinca",	"P. phoxinus",	"C. gobio",	"S. salar",	"B. barbatula",	"G. aculeatus",	"S. erythrophthalmus",	"L. fluviatilis",	"P. marinus",	"G. cernua*",	"O. mykiss*",	"P. flesus*", "P. parva*", "U. pygmaea*"), font.axis=3, beside=TRUE, ylim=c(0,1),
col=c("black","grey"), las=2)
box()##species with an asterisk have not been recorded in the lake previously



title(xlab="Species", cex.lab=1.5, line=9)
title(ylab="Site Occupancy", cex.lab=1.5, line=3)

legend(locator(1),c("12S", "CytB"),pch=c(15,15),col=c("black","grey"),cex=1.2)##using legend(locator(1)) allows you to click exact position on graph where you want legend.


#c) BASS: site occupancy
#data is formatted and pasted from BASSmatrix2.csv
#create data matrix
BassSO <-matrix(c(0.833333333,1,0.666666667,0.666666667,1,1,0.666666667,1,0.833333333,0,0,0.666666667,0.666666667,0.333333333,0.833333333,1,0,0.166666667,0.333333333,1,0,0.166666667,0.666666667,0,0.166666667,0,0,0), nrow=2, ncol=14, byrow=TRUE)
BassSO

op<-par(mar=c(10,4,4,2) +0.1)

barplot(BassSO,main="c) Bassenthwaite", names.arg=c("P. fluviatilis",	"G. cernua",	"R. rutilus",	"A. anguilla",	"E. lucius",	"S. trutta",	"L. leuciscus",	"P. phoxinus",	"S. salar",	"C. albula", 	"A. brama*",	"B. barbatula*","G. aculeatus*",	"S. cephalus*"), font.axis=3, beside=TRUE, ylim=c(0,1),
col=c("black","grey"), las=2)
box()##species with an asterisk have not been recorded in the lake previously



title(xlab="Species", cex.lab=1.5, line=6.5)
title(ylab="Site Occupancy", cex.lab=1.5, line=3)

legend(locator(1),c("12S", "CytB"),pch=c(15,15),col=c("black","grey"),cex=1.2)##using legend(locator(1)) allows you to click exact position on graph where you want legend.

#d)DER: site occupancy
#data is formatted and pasted from Dermatrix.csv
DERSO <-matrix(c(0.8333,0.5000,0.6667,0.8333,0.3333,0.8333,0.6667,0.3333,0.0000,0.1667,0.3333,0.1667,0.1667,0.5000,0.0000,0.3333,0.1667,0.0000,0.3333,0.1667,0.1667,0.0000,0.0000,0.0000,0.0000,0.0000), nrow=2, ncol=13, byrow=TRUE)
DERSO ##order of numbers is 12S then cytb

op<-par(mar=c(10,4,4,2) +0.1)

barplot(DERSO,main="d) Derwent Water", names.arg=c("P. fluviatilis",	"R. rutilus", "G. cernua",	"P. phoxinus",	"C. albula",	"E. lucius",	"S. trutta", "A. anguilla", "L. leuciscus",	"B. barbatula*",	"G. aculeatus*", "P. pungitius*",	"S. erythrophthalmus*"), font.axis=3, beside=TRUE, ylim=c(0,1),
col=c("black","grey"), las=2)
box()##species with an asterisk have not been recorded in the lake previously


title(xlab="Species", cex.lab=1.5, line=6.5)
title(ylab="Site Occupancy", cex.lab=1.5, line=3)

legend(locator(1),c("12S", "CytB"),pch=c(15,15),col=c("black","grey"),cex=1.2)##using legend(locator(1)) allows you to click exact position on graph where you want legend.

#############################
##Repeating similar figs for SOM Fig S8 a (read count) and b (proportion of reads) 


par(mfrow=c(2,2))

#change margin sizes to fit axes labels on
#(bottom,left,top,right) default is (5,4,4,2) +0.1 ##was op<-par(mar=c(10,7,4,2) +0.1)
op6<-par(mar=c(8,4,4,2) +0.1)

#Fig S8a Read count

#a) Win North: read count
#data is formatted and pasted from WINNmatrix.csv
WinNRC<-matrix(c(32267,22857,1923,3931,9822,3725,17448,8506,1067,1637,7928,2013,129,0,0,0,320,2679,82,38,206195,4371,1112,4611,28493,8244,7120,41179,866,207,20166,22159,0,0,0,0,0,0,0,0), nrow=2, ncol=20, byrow=TRUE)
WinNRC

op7<-par(mar=c(10,6,4,2) +0.1)

barplot(WinNRC,main="a) Windermere North Basin", names.arg=c("P. fluviatilis",	"R. rutilus",	"S. alpinus",	"E. lucius",	"S. trutta", 	"A. anguilla",	"P. phoxinus",	"C. gobio",	"S. salar",	"B. barbatula",	"G. aculeatus", 	"A. brama",	"T. tinca",	"S. erythrophthalmus",	"L. fluviatilis",	"P. marinus",	"C. carpio*",	"G. cernua*",	"L. delineatus*",	"O. eperlanus*"), font.axis=3, beside=TRUE, ylim=c(0,207000),
col=c("black","grey"), las=2)
box()##species with an asterisk have not been recorded in the lake previously

title(xlab="Species", cex.lab=1.5, line=9)
title(ylab="Read Count", cex.lab=1.5, line=4)

###add legend

legend(locator(1),c("12S", "CytB"),pch=c(15,15),col=c("black","grey"),cex=1.2)##using legend(locator(1)) allows you to click exact position on graph where you want legend.



#b) WIn S: Read Count
#data is formatted and pasted from WINSmatrix.csv
WinSRC <-matrix(c(53357,51145,4451,7111,5059,1096,16576,0,1819,2352,256,2219,677,93,0,0,2133,47,0,0,229,293343,23303,7259,17160,31687,2518,144822,0,3074,11614,0,186,2655,0,0,0,0,0,7553,29171,0), nrow=2, ncol=21, byrow=TRUE)
WinSRC

op7<-par(mar=c(10,6,4,2) +0.1)

barplot(WinSRC,main="b) Windermere South Basin", names.arg=c("P. fluviatilis",	"R. rutilus",	"E. lucius",	"S. trutta",	"A. anguilla",	"S. alpinus",	"A. brama",	"T. tinca",	"P. phoxinus",	"C. gobio",	"S. salar",	"B. barbatula",	"G. aculeatus",	"S. erythrophthalmus",	"L. fluviatilis",	"P. marinus",	"G. cernua*",	"O. mykiss*",	"U. pygmaea*",	"P. flesus*",	"P. parva*"), font.axis=3, beside=TRUE, ylim=c(0,294000),
col=c("black","grey"), las=2)
box()##species with an asterisk have not been recorded in the lake previously



title(xlab="Species", cex.lab=1.5, line=9)
title(ylab="Read Count", cex.lab=1.5, line=4)

legend(locator(1),c("12S", "CytB"),pch=c(15,15),col=c("black","grey"),cex=1.2)##using legend(locator(1)) allows you to click exact position on graph where you want legend.


#c) BASS: Read Count
#data is formatted and pasted from BASSmatrix.csv
#create data matrix
BassRC <-matrix(c(2911,6857,1390,1561,429,2031,222,3279,573,0,0,898,553,201,32442,19014,0,5567,681,5715,0,245,2429,0,41,0,0,0), nrow=2, ncol=14, byrow=TRUE)
BassRC

op7<-par(mar=c(10,6,4,2) +0.1)

barplot(BassRC,main="c) Bassenthwaite", names.arg=c("P. fluviatilis",	"G. cernua",	"R. rutilus",	"A. anguilla",	"E. lucius",	"S. trutta",	"L. leuciscus",	"P. phoxinus",	"S. salar",	"C. albula", 	"A. brama*",	"G. aculeatus*",	"S. cephalus*",	"B. barbatula*"), font.axis=3, beside=TRUE, ylim=c(0,32500),
col=c("black","grey"), las=2)
box()##species with an asterisk have not been recorded in the lake previously



title(xlab="Species", cex.lab=1.5, line=6.5)
title(ylab="Read Count", cex.lab=1.5, line=4)

legend(locator(1),c("12S", "CytB"),pch=c(15,15),col=c("black","grey"),cex=1.2)##using legend(locator(1)) allows you to click exact position on graph where you want legend.

#d)DER: Read COunt
#data is formatted and pasted from Dermatrix.csv
DERRC <-matrix(c(1517,802,1046,956,143,911,255,102,0,51,75,210,35,52117,0,795,47,0,485,54,430,0,0,0,0,0), nrow=2, ncol=13, byrow=TRUE)
DERRC ##order of numbers is 12S then cytb

op7<-par(mar=c(10,6,4,2) +0.1)

barplot(DERRC,main="d) Derwent Water", names.arg=c("P. fluviatilis",	"R. rutilus", "G. cernua",	"P. phoxinus",	"C. albula",	"E. lucius",	"S. trutta", "A. anguilla", "L. leuciscus",	"B. barbatula*",	"G. aculeatus*", "P. pungitius*",	"S. erythrophthalmus*"), font.axis=3, beside=TRUE, ylim=c(0,52200),
col=c("black","grey"), las=2)
box()##species with an asterisk have not been recorded in the lake previously


title(xlab="Species", cex.lab=1.5, line=6.5)
title(ylab="Read Count", cex.lab=1.5, line=4)

legend(locator(1),c("12S", "CytB"),pch=c(15,15),col=c("black","grey"),cex=1.2)##using legend(locator(1)) allows you to click exact position on graph where you want legend.

###########
#Fig S8b Proportion of sequence reads

#a) Win North: read count proportions
#data is formatted and pasted from WINNmatrix.csv
WinNPRC<-matrix(c(0.277,0.196,0.017,0.034,0.084,0.032,0.150,0.073,0.009,0.014,0.068,0.017,0.001,0.000,0.000,0.000,0.003,0.023,0.001,0.000,0.598,0.013,0.003,0.013,0.083,0.024,0.021,0.119,0.003,0.001,0.058,0.064,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000), nrow=2, ncol=20, byrow=TRUE)
WinNPRC

op7<-par(mar=c(10,6,4,2) +0.1)

barplot(WinNPRC,main="a) Windermere North Basin", names.arg=c("P. fluviatilis",	"R. rutilus",	"S. alpinus",	"E. lucius",	"S. trutta", 	"A. anguilla",	"P. phoxinus",	"C. gobio",	"S. salar",	"B. barbatula",	"G. aculeatus", 	"A. brama",	"T. tinca",	"S. erythrophthalmus",	"L. fluviatilis",	"P. marinus",	"C. carpio*",	"G. cernua*",	"L. delineatus*",	"O. eperlanus*"), font.axis=3, beside=TRUE, ylim=c(0,0.6),
col=c("black","grey"), las=2)
box()##species with an asterisk have not been recorded in the lake previously

title(xlab="Species", cex.lab=1.5, line=9)
title(ylab="Proportion of reads", cex.lab=1.5, line=3)

###add legend

legend(locator(1),c("12S", "CytB"),pch=c(15,15),col=c("black","grey"),cex=1.2)##using legend(locator(1)) allows you to click exact position on graph where you want legend.



#b) WIn S: Read Count Proportions
#data is formatted and pasted from WINSmatrix.csv
WinSPRC <-matrix(c(0.359,0.344,0.030,0.048,0.034,0.007,0.112,0.000,0.012,0.016,0.002,0.015,0.005,0.001,0.000,0.000,0.014,0.000,0.000,0.000,0.002,0.511,0.041,0.013,0.030,0.055,0.004,0.252,0.000,0.005,0.020,0.000,0.000,0.005,0.000,0.000,0.000,0.000,0.000,0.013,0.051,0.000), nrow=2, ncol=21, byrow=TRUE)
WinSPRC

op7<-par(mar=c(10,6,4,2) +0.1)

barplot(WinSPRC,main="b) Windermere South Basin", names.arg=c("P. fluviatilis",	"R. rutilus",	"E. lucius",	"S. trutta",	"A. anguilla",	"S. alpinus",	"A. brama",	"T. tinca",	"P. phoxinus",	"C. gobio",	"S. salar",	"B. barbatula",	"G. aculeatus",	"S. erythrophthalmus",	"L. fluviatilis",	"P. marinus",	"G. cernua*",	"O. mykiss*",	"U. pygmaea*",	"P. flesus*",	"P. parva*"), font.axis=3, beside=TRUE, ylim=c(0,0.6),
col=c("black","grey"), las=2)
box()##species with an asterisk have not been recorded in the lake previously



title(xlab="Species", cex.lab=1.5, line=9)
title(ylab="Proportion of reads", cex.lab=1.5, line=3)

legend(locator(1),c("12S", "CytB"),pch=c(15,15),col=c("black","grey"),cex=1.2)##using legend(locator(1)) allows you to click exact position on graph where you want legend.


#c) BASS: Read Count Proportions
#data is formatted and pasted from BASSmatrix.csv
#create data matrix
BassPRC <-matrix(c(0.139,0.328,0.066,0.075,0.021,0.097,0.011,0.157,0.027,0.000,0.000,0.043,0.026,0.010,0.491,0.288,0.000,0.084,0.010,0.086,0.000,0.004,0.037,0.000,0.001,0.000,0.000,0.000), nrow=2, ncol=14, byrow=TRUE)
BassPRC

op7<-par(mar=c(10,6,4,2) +0.1)

barplot(BassPRC,main="c) Bassenthwaite", names.arg=c("P. fluviatilis",	"G. cernua",	"R. rutilus",	"A. anguilla",	"E. lucius",	"S. trutta",	"L. leuciscus",	"P. phoxinus",	"S. salar",	"C. albula", 	"A. brama*", "G. aculeatus*",	"S. cephalus*",	"B. barbatula*"), font.axis=3, beside=TRUE, ylim=c(0,0.6),
col=c("black","grey"), las=2)
box()##species with an asterisk have not been recorded in the lake previously



title(xlab="Species", cex.lab=1.5, line=6.5)
title(ylab="Proportion of reads", cex.lab=1.5, line=3)

legend(locator(1),c("12S", "CytB"),pch=c(15,15),col=c("black","grey"),cex=1.2)##using legend(locator(1)) allows you to click exact position on graph where you want legend.

#d)DER: Read COunt proprotions
#data is formatted and pasted from Dermatrix.csv
DERPRC <-matrix(c(0.249,0.131,0.171,0.157,0.023,0.149,0.042,0.017,0.000,0.008,0.012,0.034,0.006,0.966,0.000,0.015,0.001,0.000,0.009,0.001,0.008,0.000,0.000,0.000,0.000,0.000), nrow=2, ncol=13, byrow=TRUE)
DERPRC ##order of numbers is 12S then cytb

op7<-par(mar=c(10,6,4,2) +0.1)

barplot(DERPRC,main="d) Derwent Water", names.arg=c("P. fluviatilis",	"R. rutilus", "G. cernua",	"P. phoxinus",	"C. albula",	"E. lucius",	"S. trutta", "A. anguilla", "L. leuciscus",	"B. barbatula*",	"G. aculeatus*", "P. pungitius*",	"S. erythrophthalmus*"), font.axis=3, beside=TRUE, ylim=c(0,1),
col=c("black","grey"), las=2)
box()##species with an asterisk have not been recorded in the lake previously


title(xlab="Species", cex.lab=1.5, line=6.5)
title(ylab="Proportion of reads", cex.lab=1.5, line=3)

legend(locator(1),c("12S", "CytB"),pch=c(15,15),col=c("black","grey"),cex=1.2)##using legend(locator(1)) allows you to click exact position on graph where you want legend.

###############################################################################################
#Correlations between SO or RC and long term rank or gill net numbers (Figs 4 and SOM Figs 8, 9)
#Script adapted from "Correlations for MS arranged 2x4 plots.R"


install.packages("calibrate")
library(calibrate)

#open all the data ##data is in Revision/Data files for revison
#Windermere North Basin
WinNfilt <-read.csv("~/Dropbox/Fish-metabarcoding/EA project 2015/Manuscript/Revision/Data files for revison/WinNFilt-Rev.csv")
WinNfilt 

#Win S
WinSfilt <-read.csv("~/Dropbox/Fish-metabarcoding/EA project 2015/Manuscript/Revision/Data files for revison/WinSfilt-Rev.csv")
WinSfilt 

Bassfilt <-read.csv("~/Dropbox/Fish-metabarcoding/EA project 2015/Manuscript/Revision/Data files for revison/Bassfilt-Rev.csv")
Bassfilt 

Derfilt <-read.csv("~/Dropbox/Fish-metabarcoding/EA project 2015/Manuscript/Revision/Data files for revison/Derfilt-Rev.csv")
Derfilt 


par(mfrow=c(4,2))

#Fig 4 correlations between site occupancy and long term rank for each basin and locus
#######
#12S: site occupancy vs long term rank

#Win North
plot(WinNfilt$rank.Longterm, WinNfilt$X12S.freq, main="a) Windermere North Basin", xlab="Long term rank", ylab="Site Occupancy (12S)", ylim=c(0,1), cex=1.2, col="black", pch=16, cex.lab=1.2)
abline(lm(WinNfilt$X12S.freq~WinNfilt$rank.Longterm))##add line
text(WinNfilt$rank.Longterm, WinNfilt$X12S.freq, labels= WinNfilt$Code, cex=0.7, pos=3)

#Spearman's rank correlation
cor.test(WinNfilt$rank.Longterm, WinNfilt$X12S.freq, method="spearman") ##-0.8349556, S = 1247.77, p-value = 5.713e-05

text(11.5, 0.95, "Spearman: rho=-0.835, P=5.713e-05")

##
#Win S

plot(WinSfilt$rank.Longterm, WinSfilt$X12S.freq, main="b) Windermere South Basin", xlab="Long term rank", ylab="Site Occupancy (12S)", ylim=c(0,1.1), cex=1.2, col="black", pch=16, cex.lab=1.2)
abline(lm(WinSfilt$X12S.freq~WinSfilt$rank.Longterm))##add line
text(WinSfilt$rank.Longterm, WinSfilt$X12S.freq, labels= WinSfilt$Code, cex=0.7, pos=3)

#Pearson's product-moment correlation
cor.test(WinSfilt$rank.Longterm, WinSfilt$X12S.freq)##r=-0.7797251, t = -4.6596, df = 14, p-value = 0.0003683 

#Spearman's rank correlation
cor.test(WinSfilt$rank.Longterm, WinSfilt$X12S.freq, method="spearman") ##S = 1201.1, p-value = 0.0005363, rho=-0.7662856 


text(12, 1, "Spearman: rho=-0.766, P=0.0005")

##
#BASS
plot(Bassfilt$rank.Longterm, Bassfilt$X12S.freq, main="c) Bassenthwaite", xlab="Long term rank", ylab="Site Occupancy (12S)", ylim=c(0,1.1), cex=1.2, col="black", pch=16, cex.lab=1.2)
abline(lm(Bassfilt$X12S.freq~Bassfilt$rank.Longterm), lty=2)##add line
text(Bassfilt$rank.Longterm, Bassfilt$X12S.freq, labels=Bassfilt$Code, cex=0.7, pos=3)

#Pearson's product-moment correlation
cor.test(Bassfilt$rank.Longterm, Bassfilt$X12S.freq)##t = -1.3065, df = 8, p-value = 0.2277, r=-0.4193296 

#Spearman's rank correlation
cor.test(Bassfilt$rank.Longterm, Bassfilt$X12S.freq, method="spearman") ##S = 200.66, p-value = 0.5487, rho=-0.2161182  ties


text(4, 0.1, "Spearman: rho=-0.216, P=0.549")

##
#DER
plot(Derfilt$rank.Longterm, Derfilt$X12S.freq, main="d) Derwent Water", xlab="Long term rank", ylab="Site Occupancy (12S)", ylim=c(0,1), cex=1.2, col="black", pch=16, cex.lab=1.2)
abline(lm(Derfilt$X12S.freq~Derfilt$rank.Longterm), lty=2)##add line
text(Derfilt$rank.Longterm, Derfilt$X12S.freq, labels=Derfilt$Code, cex=0.7, pos=3)

#Pearson's product-moment correlation
cor.test(Derfilt$rank.Longterm, Derfilt$X12S.freq)##t = -2.0161, df = 7, p-value = 0.08361, r=-0.6061032 

#Spearman's rank correlation
cor.test(Derfilt$rank.Longterm, Derfilt$X12S.freq, method="spearman") ##S = 186.69, p-value = 0.1203, rho=-0.5557383 ties


text(4, 0.1, "Spearman: rho=-0.556, P=0.120")

##########
#cytb: site occupancy vs long term rank

#Win North
plot(WinNfilt$rank.Longterm, WinNfilt$cytb.freq, main="e) Windermere North Basin", xlab="Long term rank", ylab="Site Occupancy (cytb)", cex=1.2, ylim=c(0,1), col="black", pch=16, cex.lab=1.2)
abline(lm(WinNfilt$cytb.freq~WinNfilt$rank.Longterm))##add line
text(WinNfilt$rank.Longterm, WinNfilt$cytb.freq, labels= WinNfilt$Code, cex=0.7, pos=3)

#Spearman's rank correlation
cor.test(WinNfilt$rank.Longterm, WinNfilt$cytb.freq, method="spearman") ##-0.7210968 S = 1165.3, p-value = 0.001904

text(12, 0.9, "Spearman: rho=-0.721, P=0.002")

##
#WIn S
plot(WinSfilt$rank.Longterm, WinSfilt$cytb.freq, main="f) Windermere South Basin", xlab="Long term rank", ylab="Site Occupancy (cytb)",  ylim=c(0,1.1), cex=1.2, col="black", pch=16, cex.lab=1.2)
abline(lm(WinSfilt$cytb.freq~WinSfilt$rank.Longterm))##add line
text(WinSfilt$rank.Longterm, WinSfilt$cytb.freq, labels= WinSfilt$Code, cex=0.7, pos=3)

#Pearson's product-moment correlation
cor.test(WinSfilt$rank.Longterm, WinSfilt$cytb.freq)##t = -3.5861, df = 14, p-value = 0.00298, r=-0.6919392 

#Spearman's rank correlation
cor.test(WinSfilt$rank.Longterm, WinSfilt$cytb.freq, method="spearman") ##S = 1220.2, p-value = 0.0002369, rho=-0.7944332


text(12, 1, "Spearman: rho=-0.794, P=0.0002")

##
#BASS
plot(Bassfilt$rank.Longterm, Bassfilt$cytb.freq, main="g) Bassenthwaite", xlab="Long term rank", ylab="Site Occupancy (cytb)",  ylim=c(0,1.2), cex=1.2, col="black", pch=16, cex.lab=1.2)
abline(lm(Bassfilt$cytb.freq~Bassfilt$rank.Longterm), lty=2)##add line
text(Bassfilt$rank.Longterm, Bassfilt$cytb.freq, labels=Bassfilt$Code, cex=0.7, pos=3)

#Pearson's product-moment correlation
cor.test(Bassfilt$rank.Longterm, Bassfilt$cytb.freq)##t = -1.1912, df = 8, p-value = 0.2677, r=-0.3881456

#Spearman's rank correlation
cor.test(Bassfilt$rank.Longterm, Bassfilt$cytb.freq, method="spearman") ##ties S = 238.35, p-value =  0.198, rho -0.4445207 


text(7, 1.14, "Spearman: rho=-0.444, P=0.198")

##
#DER
plot(Derfilt$rank.Longterm, Derfilt$cytb.freq, main="h) Derwent Water", xlab="Long term rank", ylab="Site Occupancy (cytb)", ylim=c(0,0.6),  cex=1.2, col="black", pch=16, cex.lab=1.2)
abline(lm(Derfilt$cytb.freq~Derfilt$rank.Longterm), lty=2)##add line
text(Derfilt$rank.Longterm, Derfilt$cytb.freq, labels=Derfilt$Code, cex=0.7, pos=3)

#Pearson's product-moment correlation
cor.test(Derfilt$rank.Longterm, Derfilt$cytb.freq)##t = -1.271, df = 7, p-value = 0.2443, r=-0.4330127 

#Spearman's rank correlation
cor.test(Derfilt$rank.Longterm, Derfilt$cytb.freq, method="spearman") ##S = 164.71, p-value = 0.3234, rho-0.3725773 ties


text(6, 0.55, "Spearman: rho=-0.372, P=0.323")

################################################################################
#Fig. S9: Correlations between number of sequence reads and long term rank

#12S: number of sequence reads vs long term rank

#Win North

plot(WinNfilt$rank.Longterm, WinNfilt$X12S.count, main="a) Windermere North Basin", xlab="Long term rank", ylab="Number of reads (12S)", ylim=c(0,35000), cex=1.2, col="black", pch=16, cex.lab=1.2)
abline(lm(WinNfilt$X12S.count~WinNfilt$rank.Longterm))##add line
text(WinNfilt$rank.Longterm, WinNfilt$X12S.count, labels= WinNfilt$Code, cex=0.7, pos=3)

#Spearman's rank correlation
cor.test(WinNfilt$rank.Longterm, WinNfilt$X12S.count, method="spearman") ##-0.8023634, S = 1225.6, p-value = 0.000184

text(12, 32000, "Spearman: rho=-0.802, P=0.0002")

##
#Win South

plot(WinSfilt$rank.Longterm, WinSfilt$X12S.count, main="b) Windermere South Basin", xlab="Long term rank", ylab="Number of reads (12S)", ylim=c(0,58000), cex=1.2, col="black", pch=16, cex.lab=1.2)
abline(lm(WinSfilt$X12S.count~WinSfilt$rank.Longterm))##add line
text(WinSfilt$rank.Longterm, WinSfilt$X12S.count, labels= WinSfilt$Code, cex=0.7, pos=3)

#Pearson's product-moment correlation
cor.test(WinSfilt$rank.Longterm, WinSfilt$X12S.count)##r=-0.6607749, t = -3.294, df = 14, p-value = 0.005326 

#Spearman's rank correlation
cor.test(WinSfilt$rank.Longterm, WinSfilt$X12S.count, method="spearman") ##S = 1237.642, p-value = 0.0001003, rho=-0.8200626 

text(11.5, 53000, "Spearman: rho=-0.820, P=0.0001")

##
#BASS
plot(Bassfilt$rank.Longterm, Bassfilt$X12S.count, main="c) Bassenthwaite", xlab="Long term rank", ylab="Number of reads (12S)", ylim=c(0,8000), xlim=c(0,11), cex=1.2, col="black", pch=16, cex.lab=1.2)
abline(lm(Bassfilt$X12S.count~Bassfilt$rank.Longterm), lty=2)##add line
text(Bassfilt$rank.Longterm, Bassfilt$X12S.count, labels=Bassfilt$Code, cex=0.7, pos=3)

#Pearson's product-moment correlation
cor.test(Bassfilt$rank.Longterm, Bassfilt$X12S.count)## r=-0.5637929, t = -1.9308, df = 8, p-value = 0.08962

#Spearman's rank correlation
cor.test(Bassfilt$rank.Longterm, Bassfilt$X12S.count, method="spearman") ## S = 258, p-value = 0.09579, -0.5636364 


text(7, 7000, "Spearman: rho=-0.564, P=0.096")

##
#DER
plot(Derfilt$rank.Longterm, Derfilt$X12S.count, main="d) Derwent Water", xlab="Long term rank", ylab="Number of reads (12S)", ylim=c(0,2000), cex=1.2, col="black", pch=16, cex.lab=1.2)
abline(lm(Derfilt$X12S.count~Derfilt$rank.Longterm))##add line
text(Derfilt$rank.Longterm, Derfilt$X12S.count, labels=Derfilt$Code, cex=0.7, pos=3)

#Pearson's product-moment correlation
cor.test(Derfilt$rank.Longterm, Derfilt$X12S.count)## t = -4.2267, df = 7, p-value = 0.003904, r=-0.8476344 

#Spearman's rank correlation
cor.test(Derfilt$rank.Longterm, Derfilt$X12S.count, method="spearman") ## S = 220, p-value = 0.008267, rho=-0.8333333 


text(6, 1800, "Spearman: rho=-0.833, P=0.008")

##saved as RPlot nb reads 12S vs long term rank.pdf

###
#cytb: number of sequence reads vs long term rank
#Win North
plot(WinNfilt$rank.Longterm, WinNfilt$cytb.count, main="e) Windermere North Basin", xlab="Long term rank", ylab="Number of reads (cytb)", cex=1.2, col="black", ylim=c(0,250000), pch=16, cex.lab=1.2)
abline(lm(WinNfilt$cytb.count~WinNfilt$rank.Longterm))##add line
text(WinNfilt$rank.Longterm, WinNfilt$cytb.count, labels= WinNfilt$Code, cex=0.7, pos=3)

#Spearman's rank correlation
cor.test(WinNfilt$rank.Longterm, WinNfilt$cytb.count, method="spearman") ##-0.604461 , S = 1091.034, p-value = 0.01313

text(11.5, 225000, "Spearman: rho=-0.604 , P=0.013")

##
#Win S

plot(WinSfilt$rank.Longterm, WinSfilt$cytb.count, main="f) Windermere South Basin", xlab="Long term rank", ylab="Number of reads (cytb)", ylim=c(0,330000), cex=1.2, col="black", pch=16, cex.lab=1.2)
abline(lm(WinSfilt$cytb.count~WinSfilt$rank.Longterm))##add line
text(WinSfilt$rank.Longterm, WinSfilt$cytb.count, labels= WinSfilt$Code, cex=0.7, pos=3)

#Pearson's product-moment correlation
cor.test(WinSfilt$rank.Longterm, WinSfilt$cytb.count) ##t = -2.1442, df = 14, p-value = 0.05005, r-0.4972121 

#Spearman's rank correlation
cor.test(WinSfilt$rank.Longterm, WinSfilt$cytb.count, method="spearman") ##S = 1207.82, p-value = 0.0004074, rho=-0.7762059 


text(11.5, 270000, "Spearman: rho=-0.776, P=0.0004")

##
#BASS
plot(Bassfilt$rank.Longterm, Bassfilt$cytb.count, main="g) Bassenthwaite", xlab="Long term rank", ylab="Number of reads (cytb)", ylim=c(0,36000), cex=1.2, col="black", pch=16, cex.lab=1.2)
abline(lm(Bassfilt$cytb.count~Bassfilt$rank.Longterm), lty=2)##add line
text(Bassfilt$rank.Longterm, Bassfilt$cytb.count, labels=Bassfilt$Code, cex=0.7, pos=3)

#Pearson's product-moment correlation
cor.test(Bassfilt$rank.Longterm, Bassfilt$cytb.count) ## t = -2.8673, df = 8, p-value = 0.02092, r= -0.7119116 

#Spearman's rank correlation
cor.test(Bassfilt$rank.Longterm, Bassfilt$cytb.count, method="spearman") ##S = ties S = 261.1729, p-value = 0.07699, rho=-0.582866  


text(7, 33000, "Spearman: r=-0.583, P=0.077")

##
#DER
plot(Derfilt$rank.Longterm, Derfilt$cytb.count, main="h) Derwent Water", xlab="Long term rank", ylab="Number of reads (cytb)", ylim=c(0,55000), cex=1.2, col="black", pch=16, cex.lab=1.2)
abline(lm(Derfilt$cytb.count~Derfilt$rank.Longterm), lty=2)##add line
text(Derfilt$rank.Longterm, Derfilt$cytb.count, labels=Derfilt$Code, cex=0.7, pos=3)

#Pearson's product-moment correlation
cor.test(Derfilt$rank.Longterm, Derfilt$cytb.count) ## t = -1.7397, df = 7, p-value = 0.1255, r=-0.5494136 

#Spearman's rank correlation
cor.test(Derfilt$rank.Longterm, Derfilt$cytb.count, method="spearman") ##S = 158.6496, p-value = 0.398, rho=-0.3220802 ties


text(7, 50000, "Spearman: r=-0.322, P=0.398")

##saved as Fig. S9 revised


##############################
#Fig. S10: Correlations between SO and 2014 gill net numbers.

#remove rows that have zeros

nozero <-WinNfilt[which(WinNfilt$GNnumbers2014>1), ]
nozero

nozero2 <-WinSfilt[which(WinSfilt$GNnumbers2014>1), ]
nozero2

nozero3 <-Bassfilt[which(Bassfilt$GNnumbers2014>0.5), ]
nozero3

nozero4 <-Derfilt[which(Derfilt$GNnumbers2014>0.5), ]
nozero4

#12S: site occupancy vs 2014 numbers

#WIn North
plot(nozero$GNnumbers2014, nozero$X12S.freq, main="a) Windermere North Basin", xlab="2014 gill net numbers", ylab="Site occupancy (12S)", cex=1.2, col="black", pch=16, cex.lab=1.2)
abline(lm(nozero$X12S.freq~nozero$GNnumbers2014), lty=2)##add line
text(nozero$GNnumbers2014, nozero$X12S.freq, labels= nozero$Code, cex=0.7, pos=3)

#Pearson's correlation
cor.test(nozero$GNnumbers2014, nozero$X12S.freq) ##t = 1.4743, df = 2, p-value = 0.2783, r=0.7216684 


text(150, 0.9, "Pearson: r=0.722, df=2, P=0.2783")

##
#Win S
plot(nozero2$GNnumbers2014, nozero2$X12S.freq, main="b) Windermere South Basin", xlab="2014 gill net numbers", ylab="Site occupancy (12S)", xlim=c(0,500), cex=1.2, col="black", pch=16, cex.lab=1.2)
abline(lm(nozero2$X12S.freq~nozero2$GNnumbers2014), lty=2)##add line
text(nozero2$GNnumbers2014, nozero2$X12S.freq, labels=nozero2$Code, cex=0.7, pos=4)

#Pearson's correlation
cor.test(nozero2$GNnumbers2014, nozero2$X12S.freq) ## t = 1.4146, df = 2, p-value = 0.2928, r=0.7072069 



text(350, 0.6, "Pearson: r=0.707, df=2, P=0.293")

##
#BASS
plot(nozero3$GNnumbers2014, nozero3$X12S.freq, main="c) Bassenthwaite", xlab="2014 gill net numbers", ylab="Site occupancy (12S)", ylim=c(0,1.1), cex=1.2, col="black", pch=16, cex.lab=1.2)
abline(lm(nozero3$X12S.freq~nozero3$GNnumbers2014), lty=2)##add line
text(nozero3$GNnumbers2014, nozero3$X12S.freq, labels=nozero3$Code, cex=0.7, pos=3)

#Pearson's correlation
cor.test(nozero3$GNnumbers2014, nozero3$X12S.freq) ## t = 0.6941, df = 5, p-value = 0.5185, r=0.296462 


text(50, 0.1, "Pearson: r=0.296, df=5, P=0.519")

##
#DER
plot(nozero4$GNnumbers2014, nozero4$X12S.freq, main="d) Derwent Water", xlab="2014 gill net numbers", ylab="Site occupancy (12S)", ylim=c(0,1.1), cex=1.2, col="black", pch=16, cex.lab=1.2)
abline(lm(nozero4$X12S.freq~nozero4$GNnumbers2014), lty=2)##add line
text(nozero4$GNnumbers2014, nozero4$X12S.freq, labels=nozero4$Code, cex=0.7, pos=3)

#Pearson's correlation
cor.test(nozero4$GNnumbers2014, nozero4$X12S.freq) ## t = 0.7755, df = 4, p-value = 0.4813, r=0.3615367 



text(80, 0.1, "Pearson: r=0.362, df=4, P=0.481")

########################
#cytb: site occupancy vs 2014 numbers

plot(nozero$GNnumbers2014, nozero$cytb.freq, main="e) Windermere North Basin", xlab="2014 gill net numbers", ylab="Site occupancy (cytb)", cex=1.2, col="black", pch=16, cex.lab=1.2)
abline(lm(nozero$cytb.freq~nozero$GNnumbers2014), lty=2)##add line
text(nozero$GNnumbers2014, nozero$cytb.freq, labels= nozero$Code, cex=0.7, pos=1)

#Pearson's correlation
cor.test(nozero$GNnumbers2014, nozero$cytb.freq) ##t = 1.8156, df = 2, p-value = 0.2111, r=0.7889097 



text(150, 0.75, "Pearson: r=0.789, df=2, P=0.211")

##
#Win S
plot(nozero2$GNnumbers2014, nozero2$cytb.freq, main="f) Windermere South Basin", xlab="2014 gill net numbers", ylab="Site occupancy (cytb)", xlim=c(0,500), ylim=c(0,1), cex=1.2, col="black", pch=16, cex.lab=1.2)
abline(lm(nozero2$cytb.freq~nozero2$GNnumbers2014), lty=2)##add line
text(nozero2$GNnumbers2014, nozero2$cytb.freq, labels= nozero2$Code, cex=0.7, pos=4)

#Pearson's correlation
cor.test(nozero2$GNnumbers2014, nozero2$cytb.freq) ##t = 3.1157, df = 2, p-value = 0.08941, r=0.9105875 



text(350, 0.05, "Pearson: r=0.910, df=2, P=0.089")

##
#BASS
plot(nozero3$GNnumbers2014, nozero3$cytb.freq, main="g) Bassenthwaite", xlab="2014 gill net numbers", ylab="Site occupancy (cytb)", ylim=c(0,1.1), xlim=c(0,90), cex=1.2, col="black", pch=16, cex.lab=1.2)
abline(lm(nozero3$cytb.freq~nozero3$GNnumbers2014), lty=2)##add line
text(nozero3$GNnumbers2014, nozero3$cytb.freq, labels= nozero3$Code, cex=0.7, pos=4)

#Pearson's correlation
cor.test(nozero3$GNnumbers2014, nozero3$cytb.freq) ##t = 1.5852, df = 5, p-value = 0.1738, r=0.5783423



text(60, 0.1, "Pearson: r=0.578, df=5, P=0.174")

##
#DER

plot(nozero4$GNnumbers2014, nozero4$cytb.freq, main="h) Derwent Water", xlab="2014 gill net numbers", ylab="Site occupancy (cytb)", ylim=c(0,0.6), cex=1.2, col="black", pch=16, cex.lab=1.2)
abline(lm(nozero4$cytb.freq~nozero4$GNnumbers2014), lty=2)##add line
text(nozero4$GNnumbers2014, nozero4$cytb.freq, labels= nozero4$Code, cex=0.7, pos=3)

#Pearson's correlation
cor.test(nozero4$GNnumbers2014, nozero4$cytb.freq) ##t = 1.4205, df = 4, p-value = 0.2285, r=0.5790633 


text(40, 0.55, "Pearson: r=0.579, df=4, P=0.229")

##saved as Fig S10 revised.pdf

###############################################
#Fig S11 Correlations between read count and 2014 gill net numbers

#12S: sequence reads vs 2014 numbers

#WIn North
plot(nozero$GNnumbers2014, nozero$X12S.count, main="a) Windermere North Basin", xlab="2014 gill net numbers", ylab="Number of reads (12S)", ylim=c(0,37000), cex=1.2, col="black", pch=16, cex.lab=1.2)
abline(lm(nozero$X12S.count~ nozero$GNnumbers2014), lty=2)##add line
text(nozero$GNnumbers2014, nozero$X12S.count, labels= nozero $Code, cex=0.7, pos=3)

#Pearson's correlation
cor.test(nozero$GNnumbers2014, nozero$X12S.count) ##t = 1.8426, df = 2, p-value = 0.2067, r=0.7932846


text(150, 32000, "Pearson: r=0.793, P=0.207")

##
#WIn S

plot(nozero2$GNnumbers2014, nozero2$X12S.count, main="b) Windermere South Basin", xlab="2014 gill net numbers", ylab="Number of reads (12S)", xlim=c(0,500), ylim=c(0,55000), cex=1.2, col="black", pch=16, cex.lab=1.2)
abline(lm(nozero2$X12S.count~nozero2$GNnumbers2014), lty=2)##add line
text(nozero2$GNnumbers2014, nozero2$X12S.count, labels=nozero2$Code, cex=0.7, pos=4)

#Pearson's correlation
cor.test(nozero2$GNnumbers2014, nozero2$X12S.count) ## r=0.6563612, t = 1.2304, df = 2, p-value = 0.3436



text(350, 7000, "Pearson: r=0.656, df=2, P=0.343")

##
#BASS
plot(nozero3$GNnumbers2014, nozero3$X12S.count, main="c) Bassenthwaite", xlab="2014 gill net numbers", ylab="Number of reads (12S)", xlim=c(0,90), ylim=c(0,8000), cex=1.2, col="black", pch=16, cex.lab=1.2)
abline(lm(nozero3$X12S.count~nozero3$GNnumbers2014))##add line
text(nozero3$GNnumbers2014, nozero3$X12S.count, labels=nozero3$Code, cex=0.7, pos=4)

#Pearson's correlation
cor.test(nozero3$GNnumbers2014, nozero3$X12S.count) ## t = 2.6425, df = 5, p-value = 0.04548, r=0.7633763  


text(30, 7500, "Pearson: r=0.763, df=2, P=0.045")

##
#DER
plot(nozero4$GNnumbers2014, nozero4$X12S.count, main="d) Derwent Water", xlab="2014 gill net numbers", ylab="Number of reads (12S)", xlim=c(0,140), ylim=c(0,2000), cex=1.2, col="black", pch=16, cex.lab=1.2)
abline(lm(nozero4$X12S.count~nozero4$GNnumbers2014), lty=2)##add line
text(nozero4$GNnumbers2014, nozero4$X12S.count, labels=nozero4$Code, cex=0.7, pos=4)

#Pearson's correlation
cor.test(nozero4$GNnumbers2014, nozero4$X12S.count) ## t = 2.175, df = 4, p-value = 0.09527, 0.7361013 



text(100, 250, "Pearson: r=0.736, df=4, P=0.095")


########################

#cytb: nb sequence reads vs 2014 numbers

#Win North
plot(nozero$GNnumbers2014, nozero$cytb.count, main="e) Windermere North Basin", xlab="2014 gill net numbers", ylab="Number of reads (cytb)", cex=1.2, ylim=c(0,220000), col="black", pch=16, cex.lab=1.2)
abline(lm(nozero$cytb.count~nozero$GNnumbers2014))##add line
text(nozero$GNnumbers2014, nozero$cytb.count, labels= nozero$Code, cex=0.7, pos=3)

#Pearson's correlation
cor.test(nozero$GNnumbers2014, nozero$cytb.count)##t = 12.346, df = 2, p-value = 0.0064, r=0.9935028 


text(150, 195000, "Pearson: r=0.994 , P=0.006")

##
#WIn S
plot(nozero2$GNnumbers2014, nozero2$cytb.count, main="f) Windermere South Basin", xlab="2014 gill net numbers", ylab="Number of reads (cytb)", xlim=c(0,500), ylim=c(0,320000), cex=1.2, col="black", pch=16, cex.lab=1.2)
abline(lm(nozero2$cytb.count~nozero2$GNnumbers2014))##add line
text(nozero2$GNnumbers2014, nozero2$cytb.count, labels= nozero2$Code, cex=0.7, pos=4)

#Pearson's correlation
cor.test(nozero2$GNnumbers2014, nozero2$cytb.count)## r=0.999232, t = 36.063, df = 2, p-value = 0.000768 



text(150, 275000, "Pearson: r=0.999, df=2, P=0.0008")

##
#BASS
plot(nozero3$GNnumbers2014, nozero3$cytb.count, main="g) Bassenthwaite", xlab="2014 gill net numbers", ylab="Number of reads (cytb)", xlim=c(0,90), cex=1.2, col="black", pch=16, cex.lab=1.2)
abline(lm(nozero3$cytb.count~nozero3$GNnumbers2014))##add line
text(nozero3$GNnumbers2014, nozero3$cytb.count, labels= nozero2$Code, cex=0.7, pos=4)

#Pearson's correlation
cor.test(nozero3$GNnumbers2014, nozero3$cytb.count)##  t = 3.8629, df = 5, p-value = 0.01185, r=0.8654596


text(30, 30000, "Pearson: r=0.865, df=2, P=0.012")

##
#DER
plot(nozero4$GNnumbers2014, nozero4$cytb.count, main="h) Derwent Water", xlab="2014 gill net numbers", ylab="Number of reads (cytb)", ylim=c(0,55000), cex=1.2, col="black", pch=16, cex.lab=1.2)
abline(lm(nozero4$cytb.count~nozero4$GNnumbers2014))##add line
text(nozero4$GNnumbers2014, nozero4$cytb.count, labels=nozero4$Code, cex=0.7, pos=3)

#Pearson's correlation
cor.test(nozero4$GNnumbers2014, nozero4$cytb.count)##  t = 8.336, df = 4, p-value = 0.001132, r=0.972404 



text(40, 50000, "Pearson: r=0.972, df=4, P=0.001")

##saved as Fig S11 revised.pdf

#############################################################################################

#Rarefaction analysis Fig. 3

#load libraries
library(rich)
library(vegan)
library(permute)
library(boot)


#data is from Confirmed species for rarefaction.xlsx pasted into 2 separate csv files: WIN12Srarefaction and WINcytbrarefaction
#Analysis is for both N and S basins combined.


par(mfrow=c(1,1)) ##plot 1 plot 

#a) Windermere 12S
Win12S <- read.csv("~/Dropbox/Fish-metabarcoding/EA project 2015/Manuscript/Revision/R scripts and input files for revision/WIN12Srarefaction.csv")
Win12S

attach(Win12S)

W12S<-rich(matrix= Win12S, nrandom=499, verbose=TRUE)
W12S

rarc(Win12S, nrandom=100)

rarefactionWin12S <-rarc(Win12S, nrandom=100)
rarefactionWin12S

# b) WIndermere: cytb

Wincytb <- read.csv("~/Dropbox/Fish-metabarcoding/EA project 2015/Manuscript/Revision/R scripts and input files for revision/WINcytbrarefaction.csv")
Wincytb

attach(Wincytb)
cytb<-rich(matrix= Wincytb, nrandom=499, verbose=TRUE)
cytb

rarc(Wincytb, nrandom=100)

rarefactionWincytb <-rarc(Wincytb, nrandom=100)
rarefactionWincytb

#next created input file for plots by pasting results of sample-based rarefaction into text file and importing into XL
#combined results are in file Revised rarefaction results.xls and csv
#plotting both the sample-based rarefaction curves on one plot
par(mfrow=c(1,1))

alldata <-read.csv("~/Dropbox/Fish-metabarcoding/EA project 2015/Manuscript/Revision/R scripts and input files for revision/Revised rarefaction results.csv")
alldata

#add both series to the same plot using the points function
plot(alldata$Samples, alldata$X12S, pch=21, col="black", bg="black", cex=1.2, xlab="Number of samples",  ylab="Number of species", main="Sample-based rarefaction",   cex.lab=1.5)
points(alldata$Samples, alldata$cytb, pch=21, col="black", bg="grey", cex=1.2) 


legend(locator(1),
legend=c("12S","CytB"),
col=c("black","black"),
pt.bg=c("black","grey"),
pch=c(21,21),
cex=1.2
)

##plot saved as Fig 3 revised.pdf

#############################################################################################
#Fig 5 Average read count by transect figs
#data is in Average Counts by transect-Rev.csv

par(mfrow=c(2,2))



#North basin 12S


North12S<-matrix(c(1829,1512,1060,520,427,386,238,182,151,126,104,16,13,0,0,0,310,823,394,185,205,170,85,154,0,40,17,0,0,0,0,0,357,961,247,242,75,183,128,0,0,49,98,0,78,0,0,0), nrow=3, ncol=16, byrow=TRUE)
North12S

#change margin sizes to fit axes labels on
op7<-par(mar=c(10,6,4,2) +0.1) ##(bottom,left,top,right) default is (5,4,4,2) +0.1


barplot(North12S,main="a) North Basin: 12S", names.arg=c("R. rutilus","P. fluviatilis","P. phoxinus","S. trutta","C. gobio","G. aculeatus","E. lucius","A. anguilla","A. brama","S. alpinus","B. barbatula","T. tinca","S. salar","L. fluviatilis","P. marinus","S. erythrophthalmus"),beside=TRUE, font.axis=3, ylim=c(0,2000),
col=c("red","green","blue"), las=2)
box()


title(ylab="Read Count", cex.lab=1.5, line=4)
title(xlab="Species", cex.lab=1.5, line=6.5) ##don't include on top 2 plots as too squashed


legend(locator(1),c("Shore", "5m","20m","Mid-line"),pch=c(15,15),col=c("yellow","red","green","blue"),cex=1.2)##using legend(locator(1)) allows you to click exact position on graph where you want legend.

#North basin cytb
#change margin sizes to fit axes labels on
op<-par(mar=c(10,4,4,2) +0.1) ##(bottom,left,top,right) default is (5,4,4,2) +0.1

Northcytb<-matrix(c(327,7792,468,1789,2134,1072,323,234,1600,113,26,0,0,0,0,0,39,7932,36,388,788,390,0,0,1337,0,0,0,0,0,0,0,243,5986,0,113,1650,1270,388,419,0,0,0,0,173,0,0,0), nrow=3, ncol=16, byrow=TRUE)
Northcytb


op7<-par(mar=c(10,6,4,2) +0.1)


barplot(Northcytb,main="b) North Basin: CytB", names.arg=c("R. rutilus","P. fluviatilis","P. phoxinus","S. trutta","C. gobio","G. aculeatus","E. lucius","A. anguilla","A. brama","S. alpinus","B. barbatula","T. tinca","S. salar","L. fluviatilis","P. marinus","S. erythrophthalmus"),beside=TRUE, font.axis=3, ylim=c(0,8000),
col=c("red","green","blue"), las=2)
box()


title(ylab="Read Count", cex.lab=1.5, line=4)
title(xlab="Species", cex.lab=1.5, line=6.5) ##don't include on top 2 plots as too squashed

#South basin 12S
#change margin sizes to fit axes labels on
op<-par(mar=c(10,4,4,2) +0.1) ##(bottom,left,top,right) default is (5,4,4,2) +0.1

South12S<-matrix(c(2858,1650,18,387,265,54,290,331,204,12,164,0,9,0,0,16,1664,2029,44,329,97,35,146,251,340,0,55,0,0,0,0,0,2220,1609,0,189,59,30,206,187,827,157,20,0,0,0,0,0,1385,1671,141,264,67,0,188,161,644,0,101,0,0,0,0,0), nrow=4, ncol=16, byrow=TRUE)
South12S


op7<-par(mar=c(10,6,4,2) +0.1)


barplot(South12S,main="c) South Basin: 12S", names.arg=c("R. rutilus","P. fluviatilis","P. phoxinus","S. trutta","C. gobio","G. aculeatus","E. lucius","A. anguilla","A. brama","S. alpinus","B. barbatula","T. tinca","S. salar","L. fluviatilis","P. marinus","S. erythrophthalmus"),beside=TRUE, font.axis=3, ylim=c(0,3000),
col=c("yellow","red","green","blue"), las=2)
box()


title(ylab="Read Count", cex.lab=1.5, line=4)
title(xlab="Species", cex.lab=1.5, line=6.5)


#South basin cytb
#change margin sizes to fit axes labels on
op<-par(mar=c(10,4,4,2) +0.1) ##(bottom,left,top,right) default is (5,4,4,2) +0.1

Southcytb<-matrix(c(347,8154,52,1397,1289,457,2278,1485,962,0,27,0,62,0,0,0,1411,10713,0,766,0,189,9,3064,5011,0,21,0,0,0,0,0,653,8942,13,999,1178,0,781,392,3458,360,0,0,0,0,0,0,439,9599,0,422,482,137,43,196,6179,0,0,0,0,0,0,0), nrow=4, ncol=16, byrow=TRUE)
Southcytb


op7<-par(mar=c(10,6,4,2) +0.1)


barplot(Southcytb,main="d) South Basin: CytB", names.arg=c("R. rutilus","P. fluviatilis","P. phoxinus","S. trutta","C. gobio","G. aculeatus","E. lucius","A. anguilla","A. brama","S. alpinus","B. barbatula","T. tinca","S. salar","L. fluviatilis","P. marinus","S. erythrophthalmus"),beside=TRUE, font.axis=3, ylim=c(0,12000),
col=c("yellow","red","green","blue"), las=2)
box()



title(ylab="Read Count", cex.lab=1.5, line=4)
title(xlab="Species", cex.lab=1.5, line=6.5)

###Fig saved as Fig 5 revised.pdf

##################################################################################################
#Fig 6 comparison of Win N and S basins
#data is formatted in WINNS comparison data
#2x2 figure without legend (add later)
#########
par(mfrow=c(2,2))##(2 rows,2 columns)



#a) Read Count proportions: 12S
#change margin sizes to fit axes labels on
op<-par(mar=c(5,4,4,2) +0.1) ##(bottom,left,top,right) default is (5,4,4,2) +0.1


PRC12Sb<-matrix(c(0.0046,0.3649,0.0304,0.0152,0.1134,0.0346,0.3498,0.0006,0.0000,0.0075,0.0486,0.0161,0.0124,0.0018,0.0700,0.2849,0.0347,0.0145,0.0178,0.0329,0.2018,0.0000,0.0011,0.0170,0.0867,0.0751,0.1541,0.0094), nrow=14, ncol=2, byrow=FALSE) ##order of data is S basin then N basin
PRC12Sb

barplot(PRC12Sb,main="a) Read Count: 12S", names.arg=c("South Basin","North Basin"),beside=FALSE, ylim=c(0,1),
col=c("darkgreen","forestgreen","darkolivegreen4","darkolivegreen2","tomato4","tomato3","firebrick3","sienna1","tan1","darkblue","dodgerblue4","dodgerblue3","deepskyblue3","darkturquoise"),cex.names=1.2)
box()

par(op)

title(ylab="Proportion of Sequence Reads", cex.lab=1.2)

#b) Read Count proportions: cytb
#change margin sizes to fit axes labels on
op<-par(mar=c(5,4,4,2) +0.1) ##(bottom,left,top,right) default is (5,4,4,2) +0.1#

PRCcytb<-matrix(c(0.0049,0.5456,0.0135,0.0003,0.2694,0.0589,0.0433,0.0000,0.0000,0.0047,0.0319,0.0216,0.0057,0.0000,0.0585,0.5981,0.0134,0.0006,0.0643,0.0239,0.0127,0.0000,0.0000,0.0032,0.0827,0.1195,0.0207,0.0025), nrow=14, ncol=2, byrow=FALSE)
PRCcytb

barplot(PRCcytb,main="b) Read Count: CytB", names.arg=c("South Basin","North Basin"),beside=FALSE, ylim=c(0,1),
col=c("darkgreen","forestgreen","darkolivegreen4","darkolivegreen2","tomato4","tomato3","firebrick3","sienna1","tan1","darkblue","dodgerblue4","dodgerblue3","deepskyblue3","darkturquoise"),cex.names=1.2)
box()

par(op)

title(ylab="Proportion of Sequence Reads", cex.lab=1.2)

#10th March 2016
#recalculating relative proportion of total sites occupied. See sheet 1 in "Number of sites for NS comparison.xlsx"
#input file converted to matrix called "SO proportions matrix for revision.csv"

#c) Site Occupancy proportions: 12S
#this is the relative proportion of sites occupied
#change margin sizes to fit axes labels on
op<-par(mar=c(5,4,4,2) +0.1) ##(bottom,left,top,right) default is (5,4,4,2) +0.1

SOP12S<-matrix(c(0.03,0.179,0.101,0.071,0.137,0.083,0.167,0.006,0,0.006,0.125,0.065,0.024,0.006,0.113,0.138,0.092,0.041,0.021,0.041,0.118,0,0.005,0.051,0.123,0.113,0.113,0.031), nrow=14, ncol=2, byrow=FALSE)
SOP12S ##data is in "SO proportions matrix for revision.csv"

barplot(SOP12S,main="c) Site Occupancy: 12S", names.arg=c("South Basin","North Basin"),beside=FALSE, ylim=c(0,1),
col=c("darkgreen","forestgreen","darkolivegreen4","darkolivegreen2","tomato4","tomato3","firebrick3","sienna1","tan1","darkblue","dodgerblue4","dodgerblue3","deepskyblue3","darkturquoise"),cex.names=1.4)
box()

par(op)

title(ylab="Proportion of Sites Occupied", cex.lab=1.2)


#d) Site Occupancy proportions: cytb
op<-par(mar=c(5,4,4,2) +0.1) ##(bottom,left,top,right) default is (5,4,4,2) +0.1
cytbSOP<-matrix(c(0.021,0.284,0.053,0.011,0.221,0.084,0.168,0,0,0.011,0.084,0.042,0.021,0,0.095,0.242,0.053,0.011,0.042,0.042,0.074,0,0,0.032,0.179,0.137,0.084,0.011), nrow=14, ncol=2, byrow=FALSE)
cytbSOP ##data "SO proportions matrix for revision.csv"

barplot(cytbSOP,main="d) Site Occupancy: CytB", names.arg=c("South Basin","North Basin"),beside=FALSE, ylim=c(0,1),
col=c("darkgreen","forestgreen","darkolivegreen4","darkolivegreen2","tomato4","tomato3","firebrick3","sienna1","tan1","darkblue","dodgerblue4","dodgerblue3","deepskyblue3","darkturquoise"),cex.names=1.4)
box()

par(op)

title(ylab="Proportion of Sites Occupied", cex.lab=1.2)


#adding legend outside plot area (italicised names 021215)
#legend in same orientation as plot (so reversing order of spp & colours)
italics <-par(font=3)
legend("topright", inset=c(-1.0,0), legend=c("S. salar","P. phoxinus","C. gobio","S. trutta","S. alpinus","T. tinca","S. erythrophthalmus","R. rutilus","A. anguilla","A. brama","B. barbatula","E. lucius","P. fluviatilis","G. aculeatus"),pch=c(15,15),col=c("darkturquoise","deepskyblue3","dodgerblue3","dodgerblue4","darkblue","tan1","sienna1","firebrick3","tomato3","tomato4","darkolivegreen2","darkolivegreen4","forestgreen","darkgreen"),cex=1.0, par(italics)) ####if this doesn't work, add xpd=TRUE to the parameters (so par(mar=c(x,x,x,x), xpd=TRUE).  This  is needed to allow the legend to be drawn outside the plotting area but it worked without it the first time.





###############################################

#Threshold analysis Fig S4
#data is in Threshold analysis WIndermere total, input files formatted as csv file called Threshold analyses for revision.csv

par(mfrow=c(2,1))

#change margin sizes to fit axes labels on
op<-par(mar=c(11,4,4,2) +0.1) ##(bottom,left,top,right) default is (5,4,4,2) +0.1

#a) 12S
twelves<-matrix(c(0.523076923,0.430769231,0.415384615,0.584615385,0.630769231,0.492307692,0,0.969230769,0,0.446153846,0.907692308,0.138461538,0.784615385,0.184615385,0.030769231,0.015384615,0.030769231,0,0.030769231,0.323076923,0.015384615,0.015384615,0.015384615,0.015384615,0,0,0.015384615,0.507692308,0.415384615,0.4,0.584615385,0.615384615,0.476923077,0,0.969230769,0,0.415384615,0.876923077,0.123076923,0.784615385,0.184615385,0.030769231,0.015384615,0,0,0.030769231,0.307692308,0,0.015384615,0.015384615,0.015384615,0,0,0.015384615,0.507692308,0.4,0.369230769,0.553846154,0.507692308,0.415384615,0,0.969230769,0,0.4,0.876923077,0.107692308,0.769230769,0.184615385,0.030769231,0.015384615,0,0,0.030769231,0.276923077,0,0,0,0,0,0,0.01538461), nrow=3, ncol=27, byrow=TRUE)
twelves ##over an hours worth of wrangling to read this matrix. R doesn't like me using "12s". Save matrix as csv file then open it as text file and copy and paste row at a time into matrix to work.

barplot(twelves,main="a) 12S", names.arg=c("A. brama","A. anguilla","B. barbatula","C. gobio","E. lucius","G. aculeatus","L. fluviatilis","P. fluviatilis","P. marinus","P. phoxinus","R. rutilus","S. salar","S. trutta","S. alpinus","S. erythrophthalmus","T. tinca","A. alburnus*","B. barbus*","C. carpio*","G. cernua*","L. gibbosus*","L. delineatus*","O. mykiss*","O. eperlanus*","P. flesus*","P. parva*","U. pygmaea*"),beside=TRUE, ylim=c(0,1), font.axis=3,
col=c("steelblue4","steelblue2","slategray1"), las=2)
box()

par(op)

title(ylab="Site Occupancy", cex.lab=1.2, line=3)
###add legend

legend(locator(1),c("0", "0.001","0.003"),pch=c(15,15),col=c("steelblue4","steelblue2","slategray1"),cex=1.2)##using legend(locator(1)) allows you to click exact position on graph where you want legend.

#b)cytb
cytbThresh <-matrix(c(0.461538462,0.292307692,0.138461538,0.353846154,0.276923077,0.215384615,0,0.938461538,0,0.215384615,0.523076923,0.076923077,0.476923077,0.076923077,0,0,0,0.015384615,0.030769231,0,0,0,0,0,0.015384615,0.076923077,0,0.430769231,0.261538462,0.046153846,0.338461538,0.246153846,0.184615385,0,0.876923077,0,0.169230769,0.430769231,0.046153846,0.461538462,0.061538462,0,0,0,0,0.015384615,0,0,0,0,0,0.015384615,0.046153846,0,0.4,0.261538462,0,0.307692308,0.153846154,0.184615385,0,0.846153846,0,0.092307692,0.246153846,0.030769231,0.353846154,0.061538462,0,0,0,0,0.015384615,0,0,0,0,0,0.015384615,0.046153846,0), nrow=3, ncol=27, byrow=TRUE)
cytbThresh ##took a lot of wrangling to get this into R. 

#change margin sizes to fit axes labels on
op<-par(mar=c(11,4,4,2) +0.1) ##(bottom,left,top,right) default is (5,4,4,2) +0.1


barplot(cytbThresh,main="b) CytB", names.arg=c("A. brama","A. anguilla","B. barbatula","C. gobio","E. lucius","G. aculeatus","L. fluviatilis","P. fluviatilis","P. marinus","P. phoxinus","R. rutilus","S. salar","S. trutta","S. alpinus","S. erythrophthalmus","T. tinca","A. alburnus*","B. barbus*","C. carpio*","G. cernua*","L. gibbosus*","L. delineatus*","O. mykiss*","O. eperlanus*","P. flesus*","P. parva*","U. pygmaea*"),beside=TRUE, ylim=c(0,1),font.axis=3,
col=c("steelblue4","skyblue","lightsteelblue1"), las=2)
box()

par(op)

title(ylab="Site Occupancy", cex.lab=1.2, line=3)

legend(locator(1),c("0", "0.002","0.01"),pch=c(15,15),col=c("steelblue4","skyblue","lightsteelblue1"),cex=1.2)##using legend(locator(1)) allows you to click exact position on graph where you want legend.

##saved as Fig S4 revised.pdf

#####################################################################################
#Fig S5 Mock Communities. Only doing summary plots for revision.

#######
#data is from Mock communites summary.csv, originally in Mock communities analysis for revision 080316.xls
#12S communities

#change margin sizes to fit axes labels on
par(mfrow=c(1,1))


op<-par(mar=c(5.1,4.1,4.1,12.1), xpd=TRUE) ##(bottom,left,top,right)

MC12S<-matrix(c(0.134,0.047,0.044,0.043,0.009,0.044,0.061,0.055,0.007,0.126,0.000,0.088,0.058,0.034,0.048,0.033,0.013,0.017,0.061,0.055,0.009,0.015,0.066,0.080,0.028,0.040,0.054,0.040,0.080,0.066,0.014,0.066,0.040,0.026,0.040,0.052,0.040,0.040,0.014,0.028,0.052,0.040,0.054,0.040), nrow=22, ncol=2, byrow=FALSE)
MC12S 

barplot(MC12S,main="a) 12S", names.arg=c("Observed","Expected"),beside=FALSE, ylim=c(0,1),
col=c("tomato4","salmon","red3","saddlebrown","lightskyblue","dodgerblue3","royalblue4","darkolivegreen4","steelblue","slategray1","turquoise4","paleturquoise3","powderblue","forestgreen","deepskyblue3","yellowgreen","yellow","firebrick3","dodgerblue4","olivedrab3","tan1","yellow2"),cex.names=1.4)
box()

par(op)

title(ylab="Proportion of sequence reads", cex.lab=1.2)

#adding legend outside plot area

legend("topright", inset=c(-0.32,0), legend=c("A. brama","A. alburnus","A. nebulosus","B. barbus","Coregonus spp","C. gobio","C. carpio","E. lucius","G. gobio","G. cernua","L.gibbosus","L. delineatus","L. leuciscus","P. fluviatilus","P. phoxinus","P. parva","P. pungitius","R. rutilus","S. trutta","S. cephalus","T. tinca","U. pygmaea"),pch=c(15,15),col=c("tomato4","salmon","red3","saddlebrown","lightskyblue","dodgerblue3","royalblue4","darkolivegreen4","steelblue","slategray1","turquoise4","paleturquoise3","powderblue","forestgreen","deepskyblue3","yellowgreen","yellow","firebrick3","dodgerblue4","olivedrab3","tan1","yellow2"),cex=1.0, title="Legend") 

##associated chi sq

chisq.test(MC12S) ##X-squared = 0.22384, df = 21, p-value = 1


#b) cytb

#change margin sizes to fit axes labels on
par(mfrow=c(1,1))


op<-par(mar=c(5.1,4.1,4.1,12.1), xpd=TRUE) ##(bottom,left,top,right)

MCcytb<-matrix(c(0.210,0.034,0.071,0.035,0.002,0.039,0.156,0.076,0.000,0.065,0.081,0.042,0.003,0.038,0.021,0.012,0.000,0.001,0.033,0.025,0.003,0.054,0.066,0.080,0.028,0.040,0.054,0.040,0.080,0.066,0.014,0.066,0.040,0.026,0.040,0.052,0.040,0.040,0.014,0.028,0.052,0.040,0.054,0.040), nrow=22, ncol=2, byrow=FALSE)
MCcytb 

barplot(MCcytb,main="b) CytB", names.arg=c("Observed","Expected"),beside=FALSE, ylim=c(0,1),
col=c("tomato4","salmon","red3","saddlebrown","lightskyblue","dodgerblue3","royalblue4","darkolivegreen4","steelblue","slategray1","turquoise4","paleturquoise3","powderblue","forestgreen","deepskyblue3","yellowgreen","yellow","firebrick3","dodgerblue4","olivedrab3","tan1","yellow2"),cex.names=1.4)
box()

par(op)

title(ylab="Proportion of sequence reads", cex.lab=1.2)

#adding legend outside plot area

legend("topright", inset=c(-0.32,0), legend=c("A. brama","A. alburnus","A. nebulosus","B. barbus","Coregonus spp","C. gobio","C. carpio","E. lucius","G. gobio","G. cernua","L. gibosus","L. delineatus","L. leuciscus","P. fluviatilus","P. phoxinus","P. parva","P. pungitius","R. rutilus","S. trutta","S. cephalus","T. tinca","U. pygmaea"),pch=c(15,15),col=c("tomato4","salmon","red3","saddlebrown","lightskyblue","dodgerblue3","royalblue4","darkolivegreen4","steelblue","slategray1","turquoise4","paleturquoise3","powderblue","forestgreen","deepskyblue3","yellowgreen","yellow","firebrick3","dodgerblue4","olivedrab3","tan1","yellow2"),cex=1.0, title="Legend") 

##associated chi sq


chisq.test(MCcytb) ##X-squared = 0.36742, df = 21, p-value = 1


##################
#Fig S5c) Correlations between 12S and CytB mock community data

MOCK <-read.csv("~/Dropbox/Fish-metabarcoding/EA project 2015/Manuscript/Revision/R scripts and input files for revision/Mock community data for correlation.csv")
MOCK ##data is read count data corrected for concentration of DNA in mock communities (so read count divided by ng DNA)

defaultop<-par(mar=c(5,4,4,2) +0.1) ##(bottom,left,top,right) 

plot(MOCK$X12S, MOCK$cytb, xlab="12S", ylab="CytB", xlim=c(0,55000), ylim=c(0,80000),  cex=1.2, col="black", pch=16, cex.lab=1.5)


abline(lm(MOCK$cytb~MOCK$X12S))##add line 


#Pearson's product-moment correlation
cor.test(MOCK$X12S, MOCK$cytb)## 0.5989397 t = 3.3449, df = 20, p-value = 0.003226

text(20000, 75000, "Pearson: r=0.599, df=20, P=0.01")

##saved as Fig S5c revised.pdf


################################################################

#Fig S6 Correlations between 12S and cytb for a) SO and b)RC data

par(mfrow=c(4,2))


#site occupancy
#a) WINN
WINN <-read.csv("~/Dropbox/Fish-metabarcoding/EA project 2015/Manuscript/Revision/Data files for revison/WinNFilt-Rev.csv")
WINN

plot(WINN$X12S.freq,WINN$cytb.freq, xlab="12S (SO)", ylab="CytB (SO)", xlim=c(0,1), ylim=c(0,1), cex=1.2, col="black", pch=16, cex.lab=1.5, main="a) Windermere North Basin",)
abline(lm(WINN$cytb.freq~WINN$X12S.freq))


cor.test(WINN$X12S.freq,WINN$cytb.freq) ##r=0.8629766 t = 7.4452, df = 19, p-value = 4.792e-07

text(0.3, 0.9, "Pearson: r=0.863, df=19, P<0.0001")

#b) WINS
WINS <-read.csv("~/Dropbox/Fish-metabarcoding/EA project 2015/Manuscript/Revision/Data files for revison/WinSfilt-Rev.csv")
WINS

plot(WINS$X12S.freq,WINS$cytb.freq, xlab="12S (SO)", ylab="CytB (SO)", xlim=c(0,1), ylim=c(0,1), cex=1.2, col="black", pch=16, cex.lab=1.5, main="b) Windermere South Basin",)
abline(lm(WINS$cytb.freq~WINS$X12S.freq))


cor.test(WINS$X12S.freq,WINS$cytb.freq) ##r=0.8861222 t = 8.5508, df = 20, p-value = 4.105e-08

text(0.3, 0.9, "Pearson: r=0.886, df=20, P<0.0001")

#c) BASS
BASS <-read.csv("~/Dropbox/Fish-metabarcoding/EA project 2015/Manuscript/Revision/Data files for revison/Bassfilt-Rev.csv")
BASS

plot(BASS$X12S.freq,BASS$cytb.freq, xlab="12S (SO)", ylab="CytB (SO)", xlim=c(0,1), ylim=c(0,1), cex=1.2, col="black", pch=16, cex.lab=1.5, main="c) Bassenthwaite")
abline(lm(BASS$cytb.freq~BASS$X12S.freq))


cor.test(BASS$X12S.freq,BASS$cytb.freq) ##r=0.600827  t = 2.8123, df = 14, p-value = 0.01384

text(0.3, 0.9, "Pearson: r=0.601, df=14, P<0.05")

#d) DER
DER <-read.csv("~/Dropbox/Fish-metabarcoding/EA project 2015/Manuscript/Revision/Data files for revison/Derfilt-Rev.csv")
DER

plot(DER$X12S.freq,DER$cytb.freq, xlab="12S (SO)", ylab="CytB (SO)", xlim=c(0,1), ylim=c(0,1), cex=1.2, col="black", pch=16, cex.lab=1.5, main="d) Derwent Water")
abline(lm(DER$cytb.freq~DER$X12S.freq))


cor.test(DER$X12S.freq,DER$cytb.freq) ##r=0.8027476  t = 4.4647, df = 11, p-value = 0.0009551

text(0.3, 0.9, "Pearson: r=0.803, df=11, P<0.001")

##saved as Fig S6 a to d revised.pdf

#read count

#e) win north
plot(WINN$X12S.count,WINN$cytb.count, xlab="12S (RC)", ylab="CytB (RC)", cex=1.2, col="black", pch=16, cex.lab=1.5, main="e) Windermere North Basin")
abline(lm(WINN$cytb.count~WINN$X12S.count))


cor.test(WINN$X12S.count,WINN$cytb.count) ##r=0.751014  t = 4.9578, df = 19, p-value = 8.735e-05

text(10000, 200000, "Pearson: r=0.751, df=19, P<0.0001")

#f) win south
plot(WINS$X12S.count,WINS$cytb.count, xlab="12S (RC)", ylab="CytB (RC)", cex=1.2, col="black", pch=16, cex.lab=1.5, main="f) Windermere South Basin")
abline(lm(WINS$cytb.count~WINS$X12S.count))


cor.test(WINS$X12S.count,WINS$cytb.count) ##r=0.7322752  t = 4.8088, df = 20, p-value = 0.0001068

text(20000, 275000, "Pearson: r=0.732, df=20, P<0.001")

#g) BASS
plot(BASS$X12S.count,BASS$cytb.count, xlab="12S (RC)", ylab="CytB (RC)", cex=1.2, col="black", pch=16, cex.lab=1.5, main="g) Bassenthwaite")
abline(lm(BASS$cytb.count~BASS$X12S.count))


cor.test(BASS$X12S.count,BASS$cytb.count) ##r=0.6632064, t = 3.3156, df = 14, p-value = 0.005102

text(2000, 30000, "Pearson: r=0.633, df=14, P<0.01")

#h) DER
plot(DER$X12S.count, DER$cytb.count, xlab="12S (RC)", ylab="CytB (RC)", cex=1.2, col="black", pch=16, cex.lab=1.5, main="h) Derwent Water")
abline(lm(DER$cytb.count~DER$X12S.count))


cor.test(DER$X12S.count,DER$cytb.count) ##r=0.6303241 t = 2.6929, df = 11, p-value = 0.02092

text(500, 50000, "Pearson: r=0.630, df=11, P<0.05")

##saved as Fig S6 e to h revised.pdf and as Fig S6 revised a to h.pdf for all 8 plots

################################################################

#Fig S7 Correlations between SO and RC by locus and basin

par(mfrow=c(4,2))
incleft<-par(mar=c(5,5,4,2) +0.1) ##(bottom,left,top,right) 

#site occupancy
#a) WINN
WINN <-read.csv("~/Dropbox/Fish-metabarcoding/EA project 2015/Manuscript/Revision/Data files for revison/WinNFilt-Rev.csv")
WINN

plot(WINN$X12S.freq,WINN$X12S.count, xlab="Site Occupancy", ylab="Read Count", cex=1.2, col="black", pch=16, cex.lab=1.5, main="a) Windermere North Basin: 12S")
abline(lm(WINN$X12S.count~WINN$X12S.freq))


cor.test(WINN$X12S.freq,WINN$X12S.count) ##r=0.8193216 t = 6.2291, df = 19, p-value = 5.54e-06

text(0.2, 30000, "Pearson: r=0.819, df=19, P<0.0001")

#b) WINS
WINS <-read.csv("~/Dropbox/Fish-metabarcoding/EA project 2015/Manuscript/Revision/Data files for revison/WinSfilt-Rev.csv")
WINS

plot(WINS$X12S.freq,WINS$X12S.count, xlab="Site Occupancy", ylab="Read Count", cex=1.2, col="black", pch=16, cex.lab=1.5, main="b) Windermere South Basin: 12S")
abline(lm(WINS$X12S.count~WINS$X12S.freq))


cor.test(WINS$X12S.freq,WINS$X12S.count) ##r=0.8164807  t = 6.3242, df = 20, p-value = 3.579e-06

text(0.2, 50000, "Pearson: r=0.816, df=20, P<0.0001")

#c) BASS 12s
BASS <-read.csv("~/Dropbox/Fish-metabarcoding/EA project 2015/Manuscript/Revision/Data files for revison/Bassfilt-Rev.csv")
BASS

plot(BASS$X12S.freq,BASS$X12S.count, xlab="Site Occupancy", ylab="Read Count", cex=1.2, col="black", pch=16, cex.lab=1.5, main="c) Bassenthwaite: 12S")
abline(lm(BASS$X12S.count~BASS$X12S.freq))


cor.test(BASS$X12S.freq,BASS$X12S.count) ##r=0.6100846 t = 2.881, df = 14, p-value = 0.01209

text(0.2, 6500, "Pearson: r=0.610, df=14, P<0.05")

#d) DER 12S
DER <-read.csv("~/Dropbox/Fish-metabarcoding/EA project 2015/Manuscript/Revision/Data files for revison/Derfilt-Rev.csv")
DER

plot(DER$X12S.freq,DER$X12S.count, xlab="Site Occupancy", ylab="Read Count", cex=1.2, col="black", pch=16, cex.lab=1.5, main="d) Derwent Water: 12S")
abline(lm(DER$X12S.count~DER$X12S.freq))


cor.test(DER$X12S.freq,DER$X12S.count) ##r=0.8508202  t = 5.3703, df = 11, p-value = 0.0002267

text(0.2, 1250, "Pearson: r=0.851, df=11, P<0.001")


#e) win north cytb
plot(WINN$cytb.freq,WINN$cytb.count, xlab="Site Occupancy", ylab="Read Count", cex=1.2, col="black", pch=16, cex.lab=1.5, main="e) Windermere North Basin: CytB")
abline(lm(WINN$cytb.count~WINN$cytb.freq))


cor.test(WINN$cytb.freq,WINN$cytb.count) ##r=0.8029683  t = 5.8724, df = 19, p-value = 1.179e-05

text(0.2, 175000, "Pearson: r=0.803, df=19, P<0.0001")

#f) win south cytb
plot(WINS$cytb.freq,WINS$cytb.count, xlab="Site Occupancy", ylab="Read Count", cex=1.2, col="black", pch=16, cex.lab=1.5, main="f) Windermere South Basin: CytB")
abline(lm(WINS$cytb.count~WINS$cytb.freq))


cor.test(WINS$cytb.freq,WINS$cytb.count) ##r=0.8854496 t = 8.5207, df = 20, p-value = 4.342e-08

text(0.2, 275000, "Pearson: r=0.885, df=20, P<0.0001")

#g) BASS
plot(BASS$cytb.freq,BASS$cytb.count, xlab="Site Occupancy", ylab="Read Count", cex=1.2, col="black", pch=16, cex.lab=1.5, main="g) Bassenthwaite: CytB")
abline(lm(BASS$cytb.count~BASS$cytb.freq))


cor.test(BASS$cytb.freq,BASS$cytb.count) ##r=0.7549339, t = 4.3073, df = 14, p-value = 0.0007233

text(0.2, 30000, "Pearson: r=0.754, df=14, P<0.001")

#h) DER
plot(DER$cytb.freq, DER$cytb.count, xlab="Site Occupancy", ylab="Read Count", cex=1.2, col="black", pch=16, cex.lab=1.5, main="h) Derwent Water: CytB")
abline(lm(DER$cytb.count~DER$cytb.freq))


cor.test(DER$cytb.freq,DER$cytb.count) ##r=0.6733413  t = 3.0206, df = 11, p-value = 0.01164

text(0.1, 50000, "Pearson: r=0.673, df=11, P<0.05")

##saved as Fig S7 revised.pdf

##################################################################################################################

