setwd("C:\\Users\\ASUS\\Desktop\\IT24103079_Lab05")
getwd()
Delivery_Times <- read.table("Exercise - Lab 05.txt",header = TRUE)
str(Delivery_Times)

fix(data)

attach(Delivery_Times)

names(Delivery_Times)<- c("x2")
attach(Delivery_Times)
histogram<-hist(x2,main ="Deliver_Times",breaks = seq(20,70,length = 10),right = FALSE)

#Construct frequency Distribution
breaks <- round(histogram$breaks)
freq <- histogram$counts
mids <- histogram$mids


cum.freq <- cumsum(freq)
new<- c()
for(i in 1:length(breaks)){
  if(i==1){
    new[i] = 0
  }else{
    new[i] = cum.freq[i-1]
  }
}

plot(breaks, new,type = 'l',main = "Cumalative Frequency Polygon for Delivery_Times",
     xlab = "Delivery_Time", ylab = "Cumulative Frequency", ylim = c(0,max(cum.freq)))


cbind(Upper = breaks, cum.freq = new)
