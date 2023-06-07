#1.- Install and load the package berryFunctions:

install.packages("berryFunctions")
library(berryFunctions)

#2.-Pass the treesize.txt data to linReg using a formula y ~ x,
#where y represents the dependent variable and x represents the independent variable:

myDataTable <- read.table("treesize.txt", header = TRUE)
graph <- linReg(height ~ age, data = myDataTable)

#3.- showing the relationship between the two variables.

model <- lm(height ~ age, data = myDataTable)

#4.- To get a summary of the linear model, you can use
#the summary function:

summary(model)

