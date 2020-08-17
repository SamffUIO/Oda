# Oda
R - Programming
|---------------------------|
|      R programmering      |
|---------------------------|



Nyttig nettside https://r4ds.had.co.nz/explore-intro.html

Viktige ord og utrykk:
  - R som kalkulator
  - Generere tall
  - Laste inn tabeller
  - "Strings"



Data visualisering:
  - GGplot2
  - ggplot(data = <DATA>) +
      <GEOM_FUNCTION>(mapping = aes(<MAPPINGS>))
    Eller
  - ggplot(<DATA>, aes (x =, y = )) +
      <GEOM_FUNCTIOn>()
  - Jobb med dataset <MPG>
  - Teste ulike former for aes



Mer introduksjon til programmering:
  - Assigne til variabler (Objekt_navn = ...)
                          (Objekt_navn <-...)
  - >> x <- 2+5
    >> x = 2+5
  - Navnekonvensjoner: (Filnavn, Fil_navn, Fil.navn, FIL.Na_vn)
  - Vi inspiserer objekter ved å skrive navnet. >> x
                                                >> 7
  - Husk at R tar alt bokstavelig
  - Kall av funksjoner
  - Hvordan ser en standard funksjon ut.
      <function_name(arg1 = val1, arg2 = val2,...,)>




Jobbe med Data:
  - Se på datasettet nycflights13
  - Bruk <view> funksjonen
  - Bruk <filter>
  - Hvorfor "==" og ikke "=" --> Fordi vi tester for likhet
  - "==" og floating point numbers f.eks sqrt(2)^2 ==! 2
  - Bruk <near>
  - Logiske operatorer
      filter(data = flights, month == 11 | month == 12)
  - Missing variable: <is.na>
  - <arrange> fuksjonen arrange(flights, year, month, day)
  - <desc>
  - <mutate> funskjonen
      flights_sml = select(flights, year:day, ends_with("delay"), distance, air_time)
      mutate(flights_sml, gain = dep_delay-arr_delay, speed = distance/air_time*60)


Endelig programmering:
 - library(dplyr)
 - Piping "%>%"
    -   not_cancelled <- flights %>%
        filter(!is.na(dep_delay), !is.na(arr_delay))

        not_cancelled %>%
        group_by(year, month, day) %>%
        summarise(mean = mean(dep_delay))
 - Skrive funksjoner:
    - Hvorfor skriver vi funksjoner?
        - <func_name> = function(argument) {
          statement}

    - Gjør om fahrenhet til celsius
        - fahrenheit_til_celsius> = ff_2_c = function(temp_F) {temp_C = (temp_F - 32)*5/9
          + return (temp_C)}
