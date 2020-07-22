
dat1 <- read.table ("~/myGit/SignatureAnalysis/dataSEM/sampleDAT.txt", sep="\t", header = TRUE )
head(dat1)
str(dat1)

dm.temp <- dat1[,-1]
dat <- as.data.frame(dm.temp)
rownames(dat) <- dat1[,1]
dim(dat)
rownames(dat)
colnames(dat)


load ("~/myGit/SignatureAnalysis/dataSEM/parsedNewDT.rda")
load ("~/myGit/SignatureAnalysis/dataSEM/new_t_scores_w_lev.rda")



#endoVars <- c(colnames(dat),colnames(NewDT)) # Get variables
#exoVars  <- c(colnames(dat)) # Get variables

dat <- as.data.frame(c(dat,NewDT))
endoVars <- c(colnames(dat)) # Get variables
