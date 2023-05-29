#"Zadanie 2"

X<-matrix(c(3,7,4,7,5.6,2,1,8,4.3),3,3)
X
Y<-matrix(c(7.2,3.2,6.2,3,3,4.4,3.2,8,9),3,3)
Y
X%*%Y
X+Y
det(X)
det(Y)

if(ncol(X)==nrow(X)){DET1<-det(X)}
if(ncol(Y)==nrow(Y)){DET2<-det(Y)}

DET1
DET2

if(DET1!=0){Xodwrotna<-solve(X)}
if(DET1==0){"brak macierzy odwrotnej"}
round(Xodwrotna,3)

if(DET2!=0){Yodwrotna<-solve(Y)}
if(DET2==0){"brak macierzy odwrotnej"}
round(Yodwrotna,3)


Wartoscwlasna1<-eigen(X)
print(Wartoscwlasna1)

Wartoscwlasna2<-eigen(Y)
print(Wartoscwlasna2)