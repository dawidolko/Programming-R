#FUNKCJA OBLICZAJĄCA GRANICE CIĄGU.

funkcja <- function(x)
{
  s <- 0 
  for (i in 1:length(x))
  {
    s <- s + x[i]
  }
  return(s)
}

x <- c(1, 2, 3, 4, 5)

print(funkcja(x))

#FUNCKJA OBLICZAJACA WEKTORY

# Funkcja do obliczania wektorów
vector_calc <- function(x, y) {
  # Tworzymy wektor
  vector <- c(x, y)
  # Wypisujemy wynik
  print(vector)
}

# Przykład użycia
vector_calc(1, 4)

#FUNKCJA DO HORNERA

schemat_horner<-function(wspolczynniki,argument) {
  wynik <- wspolczynniki[1]
  for (i in 2:length(wspolczynniki)) {
    wynik <- wynik*argument+wspolczynniki[i]
  }
  return(wynik)
}

# Przykładowe użycie
schemat_horner(c(1,2,3,4),2)
