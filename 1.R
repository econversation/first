options(scipen=999)
library(pwt9)
library(dplyr)
library(ggplot2)

data(pwt9.0)

data <- pwt9.0

str(data)

eu28 <- c("Austria","Belgium","Bulgaria","Croatia","Cyprus","Czechia","Denmark","Estonia","Finland","France","Germany","Greece","Hungary","Ireland","Italy","Latvia","Lithuania","Luxembourg","Malta","Netherlands","Poland","Portugal","Romania","Slovakia","Slovenia","Spain","Sweden","United Kingdom")

# data <- data %>% filter(country %in% eu28)

data <- data %>% filter(isocode %in% c("USA","JPN","GBR","FRA","DEU"))

attach(data)

tail(data)

ggplot(data,aes(x=year,y=(rgdpo/pop),group=isocode,col=isocode)) + geom_line(alpha=0.75,size=1) + theme_minimal() + theme(legend.position="bottom")

