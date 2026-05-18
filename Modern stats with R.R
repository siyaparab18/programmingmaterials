x <- 5
print (x)
x+1
x+x
y <- x + 2+ 3 + 4

a <- 924+124
b <- a*a

2+2 -> h

z <- x+y
income <- 1000,
taxes <- 300

age <- c(28, 48, 47, 71, 22, 80, 48, 30, 31)
age_months <- age * 12
purchase <- c(20, 59, 2, 12, 22, 160, 34, 34, 29)
bookstore <- data.frame(age, age_months, purchase)
print (age)
print (bookstore)

# When we enter data into a vector, we can put line breaks between
# the commas:
distances <- c(687, 5076, 7270, 967, 6364, 1683, 9394, 5712, 5206,
               4317, 9411, 5625, 9725, 4977, 2730, 5648, 3818, 8241,
               5547, 1637, 4428, 8584, 2962, 5729, 5325, 4370, 5989,
               9030, 5532, 9623)
distances

height <- c(55, 33, 79, 23, 44)
weight <- c(30,23,24,44,22)
stats <- data.frame(height, weight)
x <- 1:5
y <- 5:1
x <- c(1:5, 4:1)
x
cor(height, weight, method = "pearson")
print (height, weight)

?sort
sort(x, decreasing=FALSE)
is.unsorted(x)

abs(x)
a^x
sum(x)
x%%a


sqrt(pi)
exp(2)*log(4)
rnorm (age)

1/0
0/0
sqrt(-1)
-----------------#Packages--------------

install.packages("ggplot2")
library(ggplot2)
msleep
View(msleep)
head(msleep) #shows 6 first rows of the datset
tail(msleep)  #shows 6 last rows of the dataset
dim(msleep)  #shows dimensions - rows x columns
str(msleep)  #shows structure (data types, first few values, )
names(msleep) #names of the variables

summary (msleep)
  
msleep$sleep_total
mean(msleep$sleep_total)      # Mean
median(msleep$sleep_total)    # Median
mode(msleep$sleep_total)
range(msleep$sleep_total)     # Range 
max(msleep$sleep_total)       # Max
min(msleep$sleep_total)       # Min
sd(msleep$sleep_total)        # Standard deviation
var(msleep$sleep_total)       # Variance
quantile(msleep$sleep_total)  # Various quantiles 
  
sum(msleep$sleep_total > 8)   # Frequency (count)
mean(msleep$sleep_total > 8)  # Relative frequency (proportion)

summary(msleep$sleep_rem)



