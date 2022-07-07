#setting directory
setwd("C:/Users/HP/OneDrive/Documents/hackbio")
#checking if the directory is set
getwd()

#saving the information from the file to an input file
#the file name needs to be enclosed within double quotes, the sep command specifies how columns are defined
pca1 <- read.table("C:/Users/HP/OneDrive/Documents/hackbio/plink.eigenvec", sep =" ", header =  F)


metadata <- read.table("C:/Users/HP/OneDrive/Documents/hackbio/complete_1000_genomes_sample_list_.tsv", sep = "\t", header = TRUE) 

head(pca1)

merged_data <- merge(x = pca1, y = metadata, by.x = "V2", by.y = "Sample.name", all = F)
head(merged_data)

library("ggplot2")
ggplot(data=merged_data, aes(V3, V4, color = Superpopulation.code)) + geom_point(size = 2.5) + labs(title = "Principal Component Analysis 1") + xlab("PCA1") + ylab("PCA2") + theme_light() +
  theme(plot.title = element_text(color="red3", size=15, face="bold.italic"), axis.title.x = element_text(color="blue", size=14, face="bold"), axis.title.y = element_text(color="blue", size=14, face="bold"))


ggsave("PCA1_1.png", path = "/Users/HP/OneDrive/Documents/hackbio", width = 10, height = 10, units = "in", limitsize = FALSE, dpi = 300)

#PC2 and PC3
ggplot(data=merged_data, aes(V4, V5, color = Superpopulation.code, shape = Sex)) + geom_point(size = 2.5) + labs(title = "Principal Component Analysis 2") + theme_light() + xlab("PCA2") + ylab("PCA3") + theme(plot.title = element_text(color="red3", size=15, face="bold.italic"), axis.title.x = element_text(color="blue", size=14, face="bold"), axis.title.y = element_text(color="blue", size=14, face="bold"))

ggsave("PCA1_2.png", path = "/Users/HP/OneDrive/Documents/hackbio", width = 10, height = 10, units = "in", limitsize = FALSE, dpi = 300)

#PC10 and PC11
ggplot(data=merged_data, aes(V10, V11, color = Superpopulation.code, shape = Sex)) + geom_point(size = 2.5) + labs(title = "Principal Component Analysis 3") + theme_light() + xlab("PCA3") + ylab("PCA4") + theme(plot.title = element_text(color="red3", size=15, face="bold.italic"), axis.title.x = element_text(color="blue", size=14, face="bold"), axis.title.y = element_text(color="blue", size=14, face="bold"))
ggsave("PCA1_3.png", path = "/Users/HP/OneDrive/Documents/hackbio", width = 10, height = 10, units = "in", limitsize = FALSE, dpi = 300)

#PC21 and PC22
ggplot(data=merged_data, aes(V21, V22, color = Superpopulation.code, shape = Sex)) + geom_point(size = 2.5) + labs(title = "Principal Component Analysis 4") + theme_light() + xlab("PCA4") + ylab("PCA5") + theme(plot.title = element_text(color="red3", size=15, face="bold.italic"), axis.title.x = element_text(color="blue", size=14, face="bold"), axis.title.y = element_text(color="blue", size=14, face="bold"))
ggsave("PCA1_4.png", path = "/Users/HP/OneDrive/Documents/hackbio", width = 10, height = 10, units = "in", limitsize = FALSE, dpi = 300)


