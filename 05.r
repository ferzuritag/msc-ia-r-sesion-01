treesize <- read.table("./treesize.txt", header=TRUE)

#1.-Plot tree height over age.
#2.- Add labels to the plot.
#3.- Change the point character (pch) and color (col).

plot(x=treesize$age, y=treesize$height,xlab="age", ylab="tree size",main="height", las=1, pch="+", col="#FF0000")
x11()
plot(x=treesize$age, y=treesize$height,xlab="age", ylab="tree size",main="height", las=1, pch="+", col=as.factor(treesize$measurement))
x11()
hist(x=treesize$height, xlab="Height")
x11()
boxplot(x=treesize$height,xlab="Height")

print(quantile(x=treesize$height, probs=c(0.1, 0.8)))
