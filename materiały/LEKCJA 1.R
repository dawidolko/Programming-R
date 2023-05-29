#"Zadanie 1"
A<-c(10,8,6,4,3,2,1,4,6,7)
B<-c(8,4,3,5,3,5,7,8,5,1)
A+B
2*A+B
min(A,B,na.rm=TRUE)
max(A,B,na.rm=TRUE)

#"Zadanie 2"
C<-c("T","N","T","N","N","N","T","T","T","N")
length(C)
table(C)
#"Zadanie 3"
D<-(1:10)
for(X in seq(1:20))
{
  if(X%%2 !=0)
  print(X)
}