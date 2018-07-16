library(ggplot2)
library(readr)
library(dplyr)
library(tidyr)
library(forcats)
titanic <- read_csv("~/Downloads/titanic_data.csv")
fare <- titanic$fare
length(fare); index<-which(!is.na(fare)); fare<-fare[index]; length(fare)
hist(fare,50,col="blue",freq=FALSE, main="Ticket Fare")
titanic <- mutate(titanic, 
+passenger.class = fct_recode(as.factor(pclass),
+"1st" = "1", "2nd" = "2", "3rd" = "3")
count(titanic, passenger.class)
ggplot(titanic) + 
+geom_bar(aes(x = passenger.class))
                  
                  