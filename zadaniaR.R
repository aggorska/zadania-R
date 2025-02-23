# 5. Stwórz funkcję będącą najprostszą wersją kalkulatora 
# (dodawanie, odejmowanie, mnożenie albo dzielenie dwóch liczb).
kalkulator=function(liczba1, liczba2, operacja) {
  if (operacja == "dodaj") {
    return(liczba1 + liczba2)
  } else if (operacja == "odejmij") {
    return(liczba1 - liczba2)
  } else if (operacja == "mnoz") {
    return(liczba1 * liczba2)
  } else if (operacja == "dziel") {
    if (liczba2 != 0) {
      return(liczba1 / liczba2)
    } else {
      return("Błąd: dzielenie przez zero")
    }
  } else {
    return("Nieznana operacja")
  }
}

# 3. Stwórz funkcję o nazwie pole_kola, która oblicza pole powierzchni koła dla danego promienia.
pole_kola=function(promien) {
  if (promien > 0) {
    return(pi * promien^2)
  } else {
    return("Błąd: promień musi być dodatni")
  }
}
kalkulator(10, 5, "dziel")
pole_kola(6)
  
