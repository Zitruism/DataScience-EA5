# Title     : Guess a number
# Objective : Write a program to guess a number in between 0 and 100! Hence the computer invents the number and the user = you tries to guess it!
# Created by: Philipp
# Created on: 25.05.2020

# Get the user input, verify the input and return as an integer
getUserInput <- function (){
  input <- readline(prompt="Gib eine Zahl zwischen 0 und 100 ein: ")
  if(!grepl("^[0-9]+$",input))
  {
    return(getUserInput())
  }
  return(as.integer(input))
}

num <- round(runif(1) * 100, digits = 0)
input <- -1
tries <- 0

cat("Errate eine Zahl zwischen 0 und 100.\n")
while (input != num){
  input <- getUserInput();
  tries <- tries + 1
  if(input == num){
    # Guess is correct!
    if(tries == 1){
      cat("Nur ein Versuch?! ", input, " ist richtig! Weiter so!")
    }else{
      cat(input, " is richtig! Du hast gewonnen! Du hast ", tries, " Versuche gebraucht")
    }
  }else if(input < num){
    cat(input, "ist zu klein! Versuche es noch einmal!")
  }else if(input > num){
    cat(input, "ist zu groß! Versuche es noch einmal!")
  }
}
