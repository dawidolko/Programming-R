sink("raport.txt")
install.packages("readxl")
library(readxl)
b2 <- read_excel("xyz.xlsx")
View(b2)


BAZ<-data.frame(b2)
"srednia wartosc"
mean(b2$C)
mean(b2$D)

"odchylenie standardowe z pliku"
sd(b2$C)
sd(b2$D)

"wspolczynik zmiennosci z pliku"
wspolczynikC <- sd(b2$C)/mean(b2$C)
wspolczynikC

wspolczynikD <- sd(b2$D)/mean(b2$D)
wspolczynikD

"mediana wartosc"
median(b2$C)
median(b2$D)

"kwartyle z pliku"
quantile(b2$C)
quantile(b2$D)

"minimum wartosc"
min(b2$C)
min(b2$D)


BAZ<-data.frame(BAZ[1:2])
head(BAZ)
k2<-ncol(BAZ)
for(i in 1 :k2){
  Z1<-table(BAZ[,i])
  S1<-data.frame(Z1)
  colnames(S1)<-c("wartosc","liczba")
  print(colnames(BAZ[i]))
  Z2<-prop.table(Z1)
  S2<-data.frame(Z2)
  colnames(S2)<-c("wartosc","procent%")
  S<-merge(S1,S2,by="wartosc")
  print(S)
}
sink()



