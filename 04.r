
myDataTable <- read.table("./treesize.txt", header=TRUE)

#1.-the first 5 values in column 2

firstFiveValues <- myDataTable[1:5, "height"]

print("first five values")
print(firstFiveValues)# [1]  32.7 26.0 27.9 35.4 26.4

#2.- The maximum "Height" (the maximum of the values in that column)

maxHeight <- max(myDataTable$height)

print("Maxium Height")
print(maxHeight)

#3.- For each entry: is the measurement equal to (==) A?
entriesEqualsARelation <- sapply(myDataTable$measurement, function(x) x == "A")

print("Is every entry A?")
print(entriesEqualsARelation)

#4.- BONUS 1: The height entries for trees older than 23.5 years

treesOldersThan <- myDataTable[myDataTable$height > 23.5, ]

print(treesOldersThan)

#5.- BONUS 2: All rows, excluding rows 3,7,8,9,...,90

myDataTableWithExclusions <- myDataTable[-c(3,7,8,90),]

print(myDataTableWithExclusions)