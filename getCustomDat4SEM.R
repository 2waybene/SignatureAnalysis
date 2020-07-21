
dat1 <- read.table ("~/myGit/SignatureAnalysis/dataSEM/sampleDAT.txt", sep="\t", header = TRUE )
head(dat1)
str(dat1)

dm.temp <- dat1[,-1]
dat <- as.data.frame(dm.temp)
rownames(dat) <- dat1[,1]
dim(dat)
rownames(dat)
colnames(dat)


