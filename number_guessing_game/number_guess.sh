#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

MAIN() {
  echo -e "Enter your username:"
  read USERNAME
  USERID=$($PSQL "SELECT uid FROM users WHERE name = '$USERNAME'")
  if [[ -z $USERID ]]
  then
    echo -e "\nWelcome, $USERNAME! It looks like this is your first time here."

    INSERT_USER_INTO_DATABASE=$($PSQL "INSERT INTO users(name) VALUES('$USERNAME')")

    USERID=$($PSQL "SELECT uid FROM users WHERE name = '$USERNAME'")
  else
    GAMES=$($PSQL "SELECT count(uid) FROM games WHERE uid = $USERID")
    BEST_GUESS=$($PSQL "SELECT MIN(guesses) FROM games WHERE uid = $USERID")
    echo -e "\nWelcome back, $USERNAME! You have played $GAMES games, and your best game took $BEST_GUESS guesses."
  fi
  GAME
}   

GAME() {

  #randint
  RAND=$((1 + $RANDOM % 1000))

  FLAG=0
  GUESS_COUNT=0
  echo -e "\nGuess the secret number between 1 and 1000:"

  #guess block
  while [[ $FLAG = 0 ]]
  do
    read GUESS
    if [[ ! $GUESS =~ ^[0-9]+$ ]]
    then
      echo -e "\nThat is not an integer, guess again:"
    elif [[ $GUESS = $RAND ]]
    then
      GUESS_COUNT=$(($GUESS_COUNT + 1))
      echo -e "\nYou guessed it in $GUESS_COUNT tries. The secret number was $RAND. Nice job!"
      INSERT_INTO_GAMES=$($PSQL "INSERT INTO games(uid, guesses) VALUES($USERID, $GUESS_COUNT)")
      FLAG=1
    elif [[ $GUESS -lt $RAND ]]
    then
      GUESS_COUNT=$(($GUESS_COUNT + 1))
      echo -e "\nIt's higher than that, guess again:"
    else
      GUESS_COUNT=$(($GUESS_COUNT + 1))
      echo -e "\nIt's lower than that, guess again:"
    fi
  done
}

MAIN
