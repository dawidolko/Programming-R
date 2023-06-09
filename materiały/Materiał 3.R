"wczytaj swoj� baz� danych"
library(readxl)
doR <- read_excel("DF.xlsx")
View(doR)
M<-data.frame(doR)
head(M,6)

"wgraj biblotek� ggplot 2"
library(ggplot2)

"�w.1 Narysuj histogram swojej wybranej zmiennej liczbowej z �wicze� 3"
"1. droga"
hist(M$A,breaks=c(0,10,20,30,40,50,60,70,80,90))
"2.droga ggplot2"
ggplot(M, aes(x=A))+ geom_histogram(bins = 10)

"wykres punktowy �rodki klas"
p<-ggplot(M, aes(x=A))
p+geom_histogram(bins = 10)
p+stat_bin(geom="point", binwidth=10)
"liniowy �rodki klas"
p + stat_bin(geom="line", binwidth=10)
"punktowy i liniowy"
p + stat_bin(geom="line",binwidth=10,color="Red")+ stat_bin(geom="point",binwidth=10,color="Blue")+ggtitle("rozklad")+xlab("warto�ci zmiennej A")+ylab("ilo�� w klasach")

"�w2. przedstaw rozk�ad cechy nieliczbowej z �wicze� 3"
"s�upki"
T<-table(M$g2)
T
DT<-as.data.frame(T)
colnames(DT)<-c("name","il")
DT
"s�upki i dodawanie tytu�u"
p1 <- ggplot(DT, aes(x=name,y=il,fill=name))
p1
p1+geom_bar(stat="identity")+ggtitle("s�upki")+xlab("grupy g2")+ylab("ilo��")


"ko�a"
p1
p2<-p1 + geom_bar(stat="identity", width=1) +  coord_polar("y", start=0)+ geom_text(aes(label = paste0(il, "%")), position = position_stack(vjust=0.5)) +
  labs(x = NULL, y = NULL, fill = NULL)
p2
"scalowanie manualne"
p3<-p2+theme_classic() +
  theme(axis.line = element_blank(),
        axis.text = element_blank(),
        axis.ticks = element_blank()) +
  scale_fill_manual(values=c("#FF5733", "#75FF33", "#33DBFF", "#BD33FF"))
p3

"jednokolorowe z odcieniem"
p2+theme_classic() +
  theme(axis.line = element_blank(),
        axis.text = element_blank(),
        axis.ticks = element_blank()) +
  scale_fill_brewer(palette="Greens")+ggtitle("ko�a")

"�w 3. narysuj wykres rozk�adu dw�ch zmiennych ilo�ciowych"
"rozk�ad punkt�w"
l<-ggplot(M, aes(y = B, x = A))
l
l0<-ggplot(M, aes(y = B, x = A)) +geom_point()
l0
"linia ��cz�ca"
l1<-ggplot(M, aes(y = B, x = A)) +geom_line()
l1
l6<-l+geom_point(aes(color=g2))
l6
l12<-l1+geom_line(aes(color=g2))
l12

"�w4 przedstaw zale�no�� dw�ch zmiennych liczbowych z �w3 oraz wybranej zmiennej jako�ciowej"
"zale�no�� liniowa z punktami zmiennej B i pasem zmian mo�liwych przebiegu zale�no�ci"
l1+geom_point(aes(color = B))+geom_smooth(method = "loess",formula = 'y~x')
"wykresy z zaznaczon� przynale�no�ci� do grup"
l+ geom_point(aes(color=B, shape = g2))
"kolory i czcionki"
l + geom_point(aes(size = 0.1), col="red")
"modyfikacje skali"
l3<-ggplot(M,aes(x=g1,y=A))+theme(legend.position = "top",axis.text = element_text(size = 4))
l4<-l3+geom_point(aes(color=g1),alpha=1,size=3) 
l4
"zmiana uk�adu punkt�w przez position"
l5<-l3+geom_point(aes(color=g1),alpha=1.5,size=1.5,position = position_jitter(width = 1,height = 0))
l5
