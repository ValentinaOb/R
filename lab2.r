data=read.csv("data.csv") 
print(data)


#mat <- read.csv('data.csv')
mat <- matrix(data, ncol = 10, byrow = TRUE)

#dat <- as.numeric(readLines('data.csv'))
#dat.matrix <- matrix(dat, nrow=11)

print (mat)

max_el=max(mat)
min_el=min(mat)


