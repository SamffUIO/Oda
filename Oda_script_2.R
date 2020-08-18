#To eksempler på funksjoner

#Gjør om fahrenheit til celsius funksjon
f_2_c = function(temp_F) {
  temp_C = (temp_F - 32)*5/9
  return (temp_C)
  }

#Tester funksjonen vi skrev
Temp = 32
f_2_c(Temp)


#Regner ut summen av kvadratene
sum.squares = function(x,y) {
  x^2 + y^2
  }

#Tester funksjonen
x = 2; y = 3 
sum.squares(x,y)
