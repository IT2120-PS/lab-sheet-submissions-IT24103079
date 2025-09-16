setwd ("C:\\Users\\ASUS\\Desktop\\IT24103079 PS Lab 07")
getwd()

#Question 01
punif(25, min=0, max=40, lower.tail=TRUE) - punif(10, min=0, max=40, lower.tail=TRUE)

#Question 02
pexp(2, rate=1/3, lower.tail=TRUE)

#Question 03
#Part 01
pnorm(130, mean=100, sd=15, lower.tail=FALSE)

#Part 02
qnorm(0.95, mean=100, sd=15, lower.tail=TRUE)
