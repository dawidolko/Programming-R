"tablica"
"macierz"
"lista"
"ramka"

"tablica - array"
tbl<-1:20
tbl
dim(tbl)<-c(4,5)
tbl
"odwo�anie do 1 kolumny"
tbl[,1]
"odwo�anie do 3 wiersza"
tbl[3,]
"odwo�anie do danego miejsca"
tbl[2,4]
A<-array(c(1:4,4:1),dim=c(2,4))
A
"wyszukiwanie warto�ci w tbl, kt�re s� w tablicy A"
tbl[A]
tbl[A]=NA
tbl


outer(1:10,1:10)
outer(1:10,1:10,FUN = "/")

"macierze"
w<-c(2,3,4,5,6)
a<-c(14,15,16,17,18)
B<-matrix(c(w,a),nrow = 2,ncol = 5,byrow = T)
B
B1<-matrix(c(w,a),nrow=5,ncol=2,byrow = F)
B1
" w nowych wersiach"
B2<-matrix(c(w,a),2,5)
B2

M1<-matrix(c(1,3,5,7,5,8,3,9,10),3,3)
M1
M2<-matrix(c(3.2,3,4.1,6,3,4.8,3.1,8,9),3,3)
M2
"ilo�� kolumn"
ncol(M1)
"ilo�� wierszy"
nrow(M1)
"r�ne dzia�ania na macierzach"
"1) mno�enie ka�dego elementu przez ka�dy - czyli 1 przez 1 2 przez 2 - odpowiednie miejsca z sob�"
M1*M2
"1' - dodawanie odejmowanie macierzy"
M1+M2
M1-M2
"2)mno�enie macierzy"
if(ncol(M1)==nrow(M2)){D<-M1%*%M2}
if(ncol(M1)!=nrow(M2)){"brak mo�liwo�ci mno�enia"}
D
"3) wyznacznik macierzy"
if(ncol(M1)==nrow(M1)){DET<-det(M1)}
if(ncol(M1)!=nrow(M1)){"macierz nie jest kwadratowa"}
DET
"4) macierz odwrotna - mo�liwa gdy DET jest r�ne od 0"
if(DET!=0){M1od<-solve(M1)}
if(DET==0){"brak macierzy odwrotnej"}
round(M1od,3)
"5) rozwi�zywanie prostych r�wna� macierzowych M1*X=M2 - chcemy wyliczy� X"
X<-solve(M1,M2)
X
"6) wektor w�asny i warto�� w�asna macierzy"
WW<-eigen(M1)
WW
"7) Iloczyn kronekera"
M1%x%M2
"8) suma macierzy"
M1+M2

"komendy ��cz�ce macierze, tablice, ramki danych"
"��czenie wierszami"
rbind(M1,M2)
"��czenie kolumnami"
cbind(M1,M2)

"�wiczenie 1 - zadaj dwie macierze o wymiarze 4 na 4"
#a) policz ich iloczyn i sum�
#b) policzycz wyznaczniki
#c) znajd� macierze odwrotne
#d) policz warto�� w��sn� i wektor w�asny


"lista"
L<-list(w,a,M1,M2,DET)

L[[3]]

d1<-list(imie=c("Jan","Tomasz"),nazwisko="kowalski",wiek=30)
d1$imie
d1[[1]]


"ramka - data.frame"
wiek<-c(34,35,36,39,40,41,42)
p�e�<-c("k","m","k","k","m","m","k")
wzrost<-c(165,180,170,168,175,177,167)
DF<-data.frame(wiek,p�e�,wzrost)
DF
"zamiana ramki na macierz"
M3<-as.matrix(DF)
M3
"zamiana macierzy na ramk�"
DF1<-as.data.frame(M1)
"przypisanie nazw"
colnames(DF1)<-c("a","b","c")
DF1

"�wiczenie 2. stw�rz ramk� danych z�o�on� 
z 20 wierszy i 4 kolumn ( 2 miana, 2 to liczby)"

"raport"
sink("C:/Users/lech/Desktop/raport1 lech zar�ba.txt")
"zadane macierze i obliczenia"
M1<-matrix(c(1,2,3,5,7,5,8,3,9,10,11,12,13,14,15,16),4,4)
print(M1)
M2<-matrix(c(3.2,3,4.1,6,3,4.8,3.1,8,9,10,6,8,7,4,4.3,15),4,4)
print(M2)
"r�ne dzia�ania na macierzach"
"2)mno�enie macierzy"
if(ncol(M1)==nrow(M2)){D<-M1%*%M2}
if(ncol(M1)!=nrow(M2)){print("brak mo�liwo�ci mno�enia")}
print("iloczyn macierzy")
print(D)
"3) wyznacznik macierzy"
if(ncol(M1)==nrow(M1)){DET<-det(M1)}
if(ncol(M1)!=nrow(M1)){print("macierz nie jest kwadratowa")}
print("wyznacznik macierzy M1")
print(DET)
"4) macierz odwrotna - mo�liwa gdy DET jest r�ne od 0"
if(DET!=0){M1od<-solve(M1)}
if(DET==0){print("brak macierzy odwrotnej")}
print("macierz odwrotna")
print(M1od)

"6) wektor w�asny i warto�� w�asna macierzy"
WW<-eigen(M1)
print("wektor w�asny macierzy M1")
print(WW)

"8) suma macierzy"
print("suma macierzy")
print(M1+M2)
sink()





