#"kalkulator"
2+2
sin(pi/2)
2^(1/3)

"wektor"
A<-c(10,3.5,5,6,8,3.4,6,8)
A
"wyliczanie �redniej z element�w wektora"
mean(A,na.rm=T)
"wektor element�w odwrotnych"
1/A
"mno�enie wektora przez liczb�"
2*A
"okre�lanie d�ugo�ci wektora"
length(A)

"nowy wektor co drugi element mno�y� przez 2"
B<-A*c(1,2)
B
A
B
"dzia�ania na wektorach o r�wnej d�ugo�ci - miejscami"
A+B
A*B
A/B
A^2

A[3]

"Wywo�ywanie miejsc w wektorze"
v<-c(A[1],A[4],A[8])
v
#zakres
v1<-A[1:5]
v1
"zerowanie element�w wektora"
B1<-B
B1[1:3]<-0
B1
"maximum"
max(A)
"minimum"
min(A)
"uporz�dkowanie danych od najmniejszej do najwi�kszej"
A1<-sort(A)
A1
A2<-sort(A,decreasing = T)
A2
"odchylenie standardowe"
sd(A)
"mediana"
median(A)
"rysunek punkt�W"
plot(A,main = "wykres",xlab = "o� x", ylab = "o� Y")
"iloczyn element�w wektora"
prod(A)

"wektory nieliczbowe"
AN<-c("T","N","T","N","T","T","T","N","T","N","T","T")
AN
sort(AN)
"liczno�ci"
T<-table(AN)
T
"w procentach"
prop.table(T)

"sekwencje liczb ci�gi"
"liczby od 1 do 30"
C1<-1:30
C1
C2<-30:1
C2

"repliki danych liczby 1 do 5 powt�rzone 5 razy"
rep(1:5,rep(5,5))
"zadanie sekwencji- losowanie 10 liczb z przedzia�u od -1 do 1"
S1<-seq(from=-1,to=1,length=10)
S1
"zadanie sekwencji- liczb z przedzia�u od -1 do 1 co 0.1"
S2<-seq(-1,1,by=0.1)
S2
S3<-as.vector(S2)
S3
"wywo�anie pojedynczego elementu wektor"
S1[2]
"wyb�r pewnych liczb"
S1[c(1,7)]
"wyb�r wszystkich opr�cz wskazanych"
S1[-c(1,7)]
"sprawdzanie warunku"
S1>0

"dzia�ania na liczbach"
a<-4
b<-8
"suma,iloczyn,dzielenie,pot�gowania"
a+b
a*b
a/b
a^b
"silnia"
factorial(a)
"zaokr�glenia"
round(1/3,6)
"k�t w radianach pomi�dzy osi� OX a wektorem o pocz�tku w punkcie (0,0) i ko�cu w punkcie (2,3)"
atan2(2,3)
"najprostsze definiowanie funkcji"
f<-function(x)x^2
plot(f,xlim =c(-1,1) )
"pochodna funkcji"
FF<-expression(x^2)
FF
D(FF,'x')

"instrukcje warunkowe"
if(a==4){"prawda"}
if(a!=4){"falsz"}
ifelse(a==4,"prawda","fa�sz")

"p�tla for"
for(i in 1:10){
  print(i^2)
}
"zadanie 1 - zadaj dwa wektory 
liczbowe A i B 
( o co najmniej 10 elementach)
nast�pnie oblicz A+B, 2A+B, 
wyznacz najmniejsz� i najwi�ksz� warto��"
"zadanie 2 - zadaj wektor nieliczbowy 
o co najmniej dw�ch r�nych elementach 
a nast�pnie wyznacz liczebno�� i cz�sto�� odpowiedzi"
"zadanie 3 stw�rz p�tl� wypisuj�c� 
pierwsze 10 liczb nieparzystych"


