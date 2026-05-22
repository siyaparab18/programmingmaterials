x <- 2
x <- 3 #reassign value
y <- x + 10
print (y)
z <- x - 2
print (z)
i <- exp(2) #exponential

rm(x) #remove variable

##logic
x>y
x<y
x==y
x!=y

##data types
class(i) #check data type
is.integer(i)

as.integer(i) #convert to integer
ai<-as.integer(i) #convert to integer

z<- c("lobster")
class(z)
str(z)
mode(z)


##vectors
v1<-c(1,2)  #concepts in parentheses
v1<-c(11,22,33)
v2<-c("Mon","Tue","Wed","Thurs")
v3<-rep(from-1, to-100,by-2)


?tidyr
v1<- c (19* 1:10)
print(v1)
all_marks <-c(10,15,40,25,10)
all_marks <- rep(all_marks, times = 3)
print(all_marks)
even_numbers <- seq(2, 40, by = 2)
print(even_numbers)
