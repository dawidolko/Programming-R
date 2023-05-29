"Wczytaj baze danych do R"

b1<-read.csv("Data.csv",dec=",",sep=";")
View(b1)
"lub"
b11<-read.csv2("Data.csv", dec=",")
View(b11)
"z pliku csv" 
library(readxl)
b2 <- read_excel("DF.xlsx")
View(b2)

"zapisz jako ramk? danych"
BAZ<-data.frame(b2)
n<-nrow(BAZ)
n
#attach(M2)
k<-ncol(BAZ)
k

head(BAZ)

"1.policz podstawowe parametry cech ilosciowych i zrob raport z obliczen"
"a) Srednia"
"b) odchylenie standardowe"
"c) wspolczynnik zmiennosci"
"d) mediana"
"e) kwartyle"
"f) minimum"
"g) maksimum"

print("wybieramy cechy ilosciowe")
QA<-data.frame(BAZ[3:k])
head(QA,10)
k1<-ncol(QA)
k1


"budujemy macierz wynikow wypelnionych 0"
A2<-matrix(0,k1,9)
A2
A<-as.data.frame(A2)
A
"dla ka?dej kolumny ramki QA obliczam warto?ci statysttyk i wpisuj? do macierzy A"
for(i in 1:k1){
minimum<-min(QA[,i],na.rm = TRUE)
maximum<-max(QA[,i],na.rm=TRUE)
M<-mean(QA[,i],na.rm=TRUE)
S<-sd(QA[,i],na.rm=TRUE)
"wspolczynnik zmiennosci sd/mean*100"
VZ<-(S/M)*100
VZ
ME<-median(QA[,i],na.rm=TRUE)
ME
Q<-quantile(QA[,i],na.rm=TRUE)
Q
q1<-Q[[2]]
q3<-Q[[4]]
q1
q3
A[i,1]<-colnames(QA[i])
A[i,2]<-round(M,3)
A[i,3]<-round(S,3)
A[i,4]<-round(VZ,3)
A[i,5]<-round(minimum,3)
A[i,6]<-round(q1,3)
A[i,7]<-round(ME,3)
A[i,8]<-round(q3,3)
A[i,9]<-round(maximum,3)
}
"nazwij co policzy?e?"
colnames(A)<-c("zmienna","mean", "sd","wsp. zmienno?ci","minimum","Q1","median","Q3","maximum")

"zapisz jako ramk? danych"
A1<-data.frame(A)
head(A1)
" stw?rz raport z oblicze?"



#print("write of the basis statistic for qantity variables in csv")
write.table(A1, file="podstawowe parametry ilo?ciowych.csv",append=TRUE,sep=";",row.names=FALSE,col.names=TRUE,dec = ",")


"przedstaw rozk?ad zmiennych nie liczbowych w liczbach i procentach"

sink("C:/Users/lech/Desktop/Raport dla cech jako?ciowych.txt")

print("2. tabele liczno?ci i procent?w dla zmiennych jako?ciowych")

"wybieram zmienne nieliczbowe"
BAZBQ<-data.frame(BAZ[1:2])
head(BAZBQ)
k2<-ncol(BAZBQ)
for(i in 1 :k2){
  Z1<-table(BAZBQ[,i])
  S1<-data.frame(Z1)
  colnames(S1)<-c("Miano","liczba")
  print(colnames(BAZBQ[i]))
  Z2<-prop.table(Z1)
  S2<-data.frame(Z2)
  colnames(S2)<-c("Miano","procent")
  S<-merge(S1,S2,by="Miano")
  print(S)
  }
sink()



"operacje na ramkach - pakiet dplyr"
"wgraj pakiet dplyr"

library(dplyr)
" opis r??nych instrukcji"
"1. filtracja danych mo?na wybiera? z tabeli dowolne dane"

"wybieramy z g?ownej bazy te kt?re w kolumnie 2 maj? warto?? a"
filter(BAZ,BAZ[,2]=="a")
filter(BAZ,BAZ[,1]=="b"&BAZ[,2]=="a")

"& - i koninkcja"
"| - lub"
"!= negacja"

"wyb?r wszystkich zmiennych wi?kszych ni? zaznaczona liczba z ca?ej tabeli"
filter_all(BAZ,all_vars(.>=2))
" wyb?r tych bez oznaczenia"
filter_all(BAZ,any_vars(is.na(.)))
"wyb?r tylko zmiennych o warto?ci zadanej wybieramy tylko zmienne, dla kt?Rych kolumna A ma warto?? 54"
filter_at(BAZ, vars(starts_with("A")), any_vars((. %% 54) == 0))

"grupowanie i ?rednie"
" tworzymy baz? GA jako pogrupowanie wynik?w wzgl?dem kolumny 2"
GA<-BAZ %>% group_by(BAZ[,2])
GA<-group_by(BAZ,BAZ[,2])
GA

"liczenie ?rednich w grupach"
summarise(GA,sA = mean(A),SB = mean(B),SC = mean(C),SD = mean(D))
"podstawowe parametry grupami"
summarise(GA,MA=mean(A),sdA<-sd(A),med=median(A),q1=quantile(A,0.25),q3=quantile(A,0.75),IRQ=mad(A))


"grupowania"

group_by_all(BAZ)
group_by_if(BAZ, is.factor)
S<-group_by_at(BAZ,vars(g1,g2))
S
summarise(S,X = mean(A))



"dodawanie kolumny przerobionej z innej"
mutate(BAZ, x = B*A)

"sortowanie po warto?ciach"
arrange(BAZ,BAZ[,4])
"od najwi?kszych"
arrange(BAZ,desc(BAZ[,4]))






