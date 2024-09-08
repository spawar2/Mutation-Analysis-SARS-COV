# Mutation analysis COVID sequences

setwd("/Users/pawar/Desktop/K Award Proposal/Zelikovsky-Project")

data <- read.csv("usa_matrix.csv", header = TRUE, sep = "\t")

dates <- read.table("usa_dates.txt", sep="\t", header=TRUE)
