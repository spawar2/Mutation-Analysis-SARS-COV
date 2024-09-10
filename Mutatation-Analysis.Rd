# Mutation analysis COVID sequences

setwd("/Users/pawar/Desktop/K Award Proposal/Zelikovsky-Project")

data <- read.csv("file_00.csv", header = FALSE, sep = ",")

dates <- read.table("usa_dates.txt", sep="\t", header=TRUE)

# Shape it in data frame
data1 <- as.data.frame(data)
# Add row numbers as first column
data1$ID <- seq.int(nrow(data1))
rownames(data1) <- data1$ID
data1$ID <- NULL

# K-means clustering
set.seed(278613)
data1 = as.data.frame(sapply(data1, as.numeric))
K_means <- kmeans(x=na.omit(data1), centers=3)

library(useful)
plot(K_means, data=data1)

library(usethis) 
usethis::edit_r_environ()
R_MAX_VSIZE=100Gb



