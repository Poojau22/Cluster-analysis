mydata<-scale(Universities1[,2:7])

# Computing the distance
d <- dist(mydata,method="euclidean")
View(mydata)

fit<- hclust(d, method = "average")

# Building the algorithm try

plot(fit) # display dendogram

clusters<-cutree(fit, k=5) # cut the tree into 4 clusters

# Draw dendogram with red borders around the 5 clusters
rect.hclust(fit, k=5, border = "red")

# Attach the cluster numbers to university
clusters = data.frame("Uni"=Universities1[,1], 'cluster'=clusters)
clusters
