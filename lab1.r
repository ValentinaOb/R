#   V-8     n=80 + 7

y <- c(151.437,166.972,146.797,129.688,135.888,136.747,144.829, 150.621, 144.042, 146.693, 155.391,
152.186, 154.05, 138.441, 138.949, 138.966, 145.927, 136.867, 121.596, 162.762,
157.911, 151.429, 139.937, 140.73, 141.22, 152.777, 145.978, 163.02, 136.219,
153.803, 154.377, 167.603, 143.527, 155.51, 165.465, 131.784, 163.079, 139.511,
154.591, 139.478, 137.579, 154.241, 130.834, 148.761, 154.132, 164.656, 137.711,
146.154, 154.763, 151.862, 151.96, 155.206, 158.229, 159.314, 158.972, 152.601,
143.066, 154.656, 148.493, 141.368, 171.144, 137.64, 133.062, 153.865, 135.711,
145.891, 158.742, 144.311, 140.903, 141.323, 160.971, 139.771, 137.484, 156.247,
142.623, 155.409, 156.641, 155.196, 151.459, 149.488, 153.16, 152.488, 148.294,
145.475, 152.937, 151.507, 140.659, 157.925, 157.163, 160.438, 158.11, 156.17,
147.549, 149.142, 156.848, 157.911, 153.578, 147.887, 148.445, 151.36)

m=10

print("Y order: ")

#2
y <- sort(y)
print(y)

#Інтервалом групування називається різниця між максимальним і мінімальним значенням ознаки в кожній групі.
#R‑розмах варіації;
#m–кількість груп.

#3
print(paste("Max: ",max(y),"\nMin: ",min(y)))
tr=(max(y)-min(y))/m
print (paste("∆≔R/m=(max-min)/10: ",tr))

#4?
y <- array(y, dim = c(10, 10))
x<-c()

elements<-c()
#print (which(y==137.484))

for (j in 1:m*10){
    elements<-c()

    for (i in 1:10){
    if(j/10==i){
        break}
    else{
        elements<-c(elements, y[j])
    }}

    
    print (elements)
    areas <- c(areas, y[j]*min(elements)+(tr/2)*(2*j-1))
    #el<-y[j,k]*min(elements)+(tr/2)*(2*j-1)
}
print (paste("Areas: ",areas))


#for (j in 1:m)
#for (k in 1:(m-1)) {
#    el<-y[j,k]*min(y)+(tr/2)*(2*j-1)
#    #print (paste("El: ",el))
#    x<-c(x,el)
#    #x<-append(el)
#}

print (paste(" X: ",x))

#5  ?
area0<-0
area1<-0
area2<-0
area3<-0
area4<-0
area5<-0
area6<-0
for (i in 1:length(y)){
    if(y[i]<120){ area0<-area0+1}
    else if (y[i]>120 && y[i]<130) {
       area1<-area1+1
    }
    else if (y[i]>130 && y[i]<140) {
       area2<-area2+1
    }
    else if (y[i]>140 && y[i]<150) {
       area3<-area3+1
    }
    else if (y[i]>150 && y[i]<160) {
       area4<-area4+1
    }
    else if (y[i]>160 && y[i]<170) {
       area5<-area5+1
    }
    else{
        area6<-area6+1
    }
}
area <- c(area0,area1,area2,area3,area4,area5,area6)
print (" Area: ")
print (area)

#6
hist(area)
polygon(area) #!?

#7

#   !? for (j in 1:m)  for (k in 1:(m-1))
'
a<-c()
for (j in 0:m)
for (k in 0:m) {
    el<-y[j,k]*min(y)+tr*(j-1)
    a<-c(a,el)
}
#print (paste(" A: ",a))

b<-c()
for (j in 0:m)
for (k in 0:m) {
    el<-a[j,k]*tr
    b<-c(b,el)
}
'

'
for (j in 1:m*10){
    for (i in 1:10){
    if(j/10!=i){
        elements<-c(y[j])
    }
    else{
        a <- c(areas, y[j]*min(elements)+(tr/2)*(2*j-1))
        #el<-y[j,k]*min(elements)+(tr/2)*(2*j-1)
    }}
}
'

#8
polygon(b)
polygon(a)
