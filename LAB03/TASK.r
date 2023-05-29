
library(readxl)
doR <- read_excel("xyz.xlsx")
View(doR)
M<-data.frame(doR)
head(M,6)


library(ggplot2)

"cwiczenie 1"

T<-table(M$B)
T
DT<-as.data.frame(T)
colnames(DT)<-c("name","ilosc")
DT

p2 <- ggplot(DT, aes(x=name,y=ilosc,fill="Kolor czarny"))
p2+geom_bar(stat="identity")+ggtitle("columns")+xlab("Groups B")+ylab("count")+scale_fill_manual(values="black")

"cwiczenie 2"

hist(M$C,breaks=c(0,1,2,3,4,5,6,7,8,9))

ggplot(M, aes(x=C))+ geom_histogram(bins = 10)


p<-ggplot(M, aes(x=D))
p+geom_histogram(bins = 40)
p+stat_bin(geom="oval", binwidth=10)

p + stat_bin(geom="line", binwidth=10)

p + stat_bin(geom="line",binwidth=40,color="Green")+ stat_bin(geom="point",binwidth=10,color="Red")+ggtitle("Paski")+xlab("wartosci D")+ylab("licznik klas")

"cwiczenie 3"

l1+geom_point(aes(color = B))+geom_smooth(method = "loess",formula = 'y~x')

l+ geom_point(aes(color=B, shape = C))

l + geom_point(aes(size = 2.1), col="blue")




"cwiczenie 4"

l<-ggplot(M, aes(y = C, x = D))
l
l0<-ggplot(M, aes(y = C, x = D)) +geom_point()
l0

l1<-ggplot(M, aes(y = C, x = D)) +geom_line()
l1
l6<-l+geom_point(aes(color=B))
l6
l12<-l1+geom_line(aes(color=B))
l12





