library(e1071)
library(stats)
#library(moments)

data=read.csv("da.csv") 
print(data)

#mat <- read.csv('data.csv')
mat = matrix(data, ncol = 10, byrow = TRUE)

#dat <- as.numeric(readLines('data.csv'))
#dat.matrix <- matrix(dat, nrow=11)

print ("Mat: ")
print (mat)

print("Range: ")
print(range(mat))
'
max_el=max(mat)
min_el=min(mat)
print ("Max: ", max)
print ("Min: ", min)
'
#3
print("Mean: ")
print(mean(mat))

'
sum=0
for (i in 1:nrow)
for (j in 1:ncol) {
   sum=sum+mat[i,j]
}
ser=sum/length(mat)
print ("Ser: ", ser)
'

#4 ? медіана
print("Median: ")
print(median(mat))

#5 вибіркова дисперсія і стандартне відхилення 
print("Var: ")
print(var(mat))
print("Sd: ")
print(sd(mat))

#6 зн. вибіркові моменти 3-го і 4-го порядків


#7 обч. вибірковий ексцес
print("Kurtosis: ")
print(kurtosis(mat))

#8 зн. коефіцієнт асиметрії
print("Skewness: ")
print(skewness(mat))