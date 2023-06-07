myDataTable <- read.table("./treesize.txt")

# output with head()

print(head(myDataTable))

#1  age height measurement
#2 24.4   32.7           A
#3 13.6     26           A
#4 15.4   27.9           A
#5 21.2   35.4           A
#6 19.8   26.4           B

print(str(myDataTable), header= TRUE)

#'data.frame':   101 obs. of  3 variables:
# $ V1: chr  "age" "24.4" "13.6" "15.4" ...
# $ V2: chr  "height" "32.7" "26" "27.9" ...
# $ V3: chr  "measurement" "A" "A" "A" ...