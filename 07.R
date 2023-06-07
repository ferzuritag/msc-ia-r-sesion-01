#1.- install an load the package berryFunctions

install.packages("berryFunctions")
library("berryFunctions")

myDataTable <- read.table("./treesize.txt", header=TRUE)

#2.-Check that everything is read correctly with str.

print(str(myDataTable))

#3.- which rows of the data.frame have measurement equal to (==) B?

bMeasurementTrees <-myDataTable[myDataTable$measurement == "B",]
print(bMeasurementTrees)

#4.- Plot the linear regression for measurement method B, then add the
#points and regression line for A in a different color and shape.
linReg(height ~ age, data = bMeasurementTrees, col = "blue", pch = "+")

#Bonus 1.- use boxplot with a formula (height~measurement) for
#an automatic boxplot comparison with median difference notches

boxplot(height ~ measurement,data=myDataTable)

#Bonus 2.- Couldn't do it

