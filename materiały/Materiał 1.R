#"kalkulator"
2+2
sin(pi/2)
2^(1/3)

"wektor"
A<-c(10,3.5,5,6,8,3.4,6,8)
A
"wyliczanie œredniej z elementów wektora"
mean(A,na.rm=T)
"wektor elementów odwrotnych"
1/A
"mno¿enie wektora przez liczbê"
2*A
"okreœlanie d³ugoœci wektora"
length(A)

"nowy wektor co drugi element mno¿yæ przez 2"
B<-A*c(1,2)
B
A
B
"dzia³ania na wektorach o równej d³ugoœci - miejscami"
A+B
A*B
A/B
A^2

A[3]

"Wywo³ywanie miejsc w wektorze"
v<-c(A[1],A[4],A[8])
v
#zakres
v1<-A[1:5]
v1
"zerowanie elementów wektora"
B1<-B
B1[1:3]<-0
B1
"maximum"
max(A)
"minimum"
min(A)
"uporz¹dkowanie danych od najmniejszej do najwiêkszej"
A1<-sort(A)
A1
A2<-sort(A,decreasing = T)
A2
"odchylenie standardowe"
sd(A)
"mediana"
median(A)
"rysunek punktóW"
plot(A,main = "wykres",xlab = "oœ x", ylab = "oœ Y")
"iloczyn elementów wektora"
prod(A)

"wektory nieliczbowe"
AN<-c("T","N","T","N","T","T","T","N","T","N","T","T")
AN
sort(AN)
"licznoœci"
T<-table(AN)
T
"w procentach"
prop.table(T)

"sekwencje liczb ci¹gi"
"liczby od 1 do 30"
C1<-1:30
C1
C2<-30:1
C2

"repliki danych liczby 1 do 5 powtórzone 5 razy"
rep(1:5,rep(5,5))
"zadanie sekwencji- losowanie 10 liczb z przedzia³u od -1 do 1"
S1<-seq(from=-1,to=1,length=10)
S1
"zadanie sekwencji- liczb z przedzia³u od -1 do 1 co 0.1"
S2<-seq(-1,1,by=0.1)
S2
S3<-as.vector(S2)
S3
"wywo³anie pojedynczego elementu wektor"
S1[2]
"wybór pewnych liczb"
S1[c(1,7)]
"wybór wszystkich oprócz wskazanych"
S1[-c(1,7)]
"sprawdzanie warunku"
S1>0

"dzia³ania na liczbach"
a<-4
b<-8
"suma,iloczyn,dzielenie,potêgowania"
a+b
a*b
a/b
a^b
"silnia"
factorial(a)
"zaokr¹glenia"
round(1/3,6)
"k¹t w radianach pomiêdzy osi¹ OX a wektorem o pocz¹tku w punkcie (0,0) i koñcu w punkcie (2,3)"
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
ifelse(a==4,"prawda","fa³sz")

"pêtla for"
for(i in 1:10){
  print(i^2)
}
"zadanie 1 - zadaj dwa wektory 
liczbowe A i B 
( o co najmniej 10 elementach)
nastêpnie oblicz A+B, 2A+B, 
wyznacz najmniejsz¹ i najwiêksz¹ wartoœæ"
"zadanie 2 - zadaj wektor nieliczbowy 
o co najmniej dwóch ró¿nych elementach 
a nastêpnie wyznacz liczebnoœæ i czêstoœæ odpowiedzi"
"zadanie 3 stwórz pêtlê wypisuj¹c¹ 
pierwsze 10 liczb nieparzystych"


