Bell Labs    #1
1,2,5        #2


df <- read_csv("Dataset/hw1_data.csv")    #11

df[c(nrow(df)-1,nrow(df)),]              #14

df[47,"Ozone"]    #15                         

is.na(df[,"Ozone"])
na.omit(df[,"Ozone"])
nrow(na.omit(df[,"Ozone"]))    #16

nrow(df[,"Ozone"])
na.omit(df[,"Ozone"])
lapply(y, mean, na.rm=TRUE)

lapply(df[,"Ozone"], mean, na.rm=TRUE)    #17

x<-df[df$Ozone > 31 && df$Temp > 90,]
x<-df[df$Ozone > 31 && df$Temp > 1,]
?readr


x<-df[df$Ozone > 31 && df$Temp > 1, ]
x[x$Solar.R>90,]
lapply(x[,"Solar.R"], mean, na.rm=TRUE)

x<-df[df$Ozone > 31 && df$Temp > 1, ]     #18
lapply(x[,"Solar.R"], mean, na.rm=TRUE)   #18

x<-df[df$Month == 6, ]                     #19
lapply(x[,"Temp"], mean, na.rm=TRUE)       #19

x<-df[df$Month == 5, ]            #20      
max(x[,"Ozone"], na.rm=TRUE)      #20









