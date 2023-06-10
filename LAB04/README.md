# Kody funkcji obliczających granice ciągu, wektory i schemat Hornera
To repozytorium zawiera kody w języku R, które demonstrują trzy różne funkcje obliczeniowe. Oto krótki opis każdej z tych funkcji:

## Funkcja obliczająca granice ciągu
```
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
```
Ta funkcja oblicza sumę elementów w ciągu, którego wartości są przekazane jako wektor x. Wykorzystuje pętlę for do sumowania wszystkich elementów i zwraca sumę jako wynik.

## Funkcja obliczająca wektory
```
vector_calc <- function(x, y) {
  vector <- c(x, y)
  print(vector)
}

vector_calc(1, 4)
```
Ta funkcja tworzy nowy wektor, łącząc dwa przekazane wejściowo wektory x i y. Następnie drukuje ten nowy wektor jako wynik.

## Funkcja wykorzystująca schemat Hornera
```
schemat_horner <- function(wspolczynniki, argument) {
  wynik <- wspolczynniki[1]
  for (i in 2:length(wspolczynniki)) {
    wynik <- wynik * argument + wspolczynniki[i]
  }
  return(wynik)
}

schemat_horner(c(1, 2, 3, 4), 2)
```
Ta funkcja implementuje schemat Hornera, który służy do obliczania wartości wielomianu dla określonego argumentu. Przyjmuje wektor wspolczynniki jako wejście, reprezentujący współczynniki wielomianu, oraz argument jako argument, dla którego obliczamy wartość wielomianu. Funkcja iteracyjnie oblicza wartość wielomianu za pomocą schematu Hornera i zwraca wynik.

Możesz sklonować to repozytorium i eksperymentować z tymi funkcjami w środowisku R. Dostosuj je do swoich potrzeb lub wykorzystaj je jako punkt wyjścia do dalszego rozwoju programowania w języku R.

Zapraszam do korzystania z tego repozytorium i rozwijania swoich umiejętności programowania w języku R!

"Kod jest jak poezja dla komputera." - Dawid Olko
