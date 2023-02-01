#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo "Enter your username:"
read USERNAME

SECRET_NUMBER=$(( ( $RANDOM % 1000 ) + 1 ))

IS_USERNAME_IN_DATABASE=$($PSQL "SELECT username FROM users WHERE username='$USERNAME'")

if [[ -z $IS_USERNAME_IN_DATABASE ]]
then
  INSERT_USER=$($PSQL "INSERT INTO users(username) VALUES ('$USERNAME')")
  echo "Welcome, $USERNAME! It looks like this is your first time here."
else
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")
  GAMES_PLAYED=$($PSQL "SELECT games_played FROM users WHERE user_id=$USER_ID")
  BEST_GAME=$($PSQL "SELECT best_game_guesses FROM users WHERE user_id=$USER_ID")
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")

GAMES_PLAYED_PLUS_ONE=$(($($PSQL "SELECT games_played FROM users WHERE user_id=$USER_ID") + 1))

UPDATE_GAMES_PLAYED=$($PSQL "UPDATE users SET games_played=$GAMES_PLAYED_PLUS_ONE WHERE user_id=$USER_ID")

echo "Guess the secret number between 1 and 1000:"
NUMBER_OF_GUESSES=0
read GUESSED_NUMBER

CHECK_IF_VAR_IS_INTEGER(){
  if [[ ! "$1" =~ ^[0-9]+$ ]]
  then
    echo "That is not an integer, guess again:"
    read GUESSED_NUMBER
    CHECK_IF_VAR_IS_INTEGER $GUESSED_NUMBER
  fi
}

CHECK_IF_VAR_IS_INTEGER $GUESSED_NUMBER


while [[ $GUESSED_NUMBER != $SECRET_NUMBER ]]
do
  NUMBER_OF_GUESSES=$((NUMBER_OF_GUESSES + 1))
  if [[ $GUESSED_NUMBER > $SECRET_NUMBER ]]
  then
    echo "It's lower than that, guess again:"
    read GUESSED_NUMBER
    CHECK_IF_VAR_IS_INTEGER $GUESSED_NUMBER
  elif [[ $GUESSED_NUMBER < $SECRET_NUMBER ]]
  then
    echo "It's higher than that, guess again:"
    read GUESSED_NUMBER
    CHECK_IF_VAR_IS_INTEGER $GUESSED_NUMBER
  fi
done

NUMBER_OF_GUESSES=$((NUMBER_OF_GUESSES + 1))

BEST_GAME=$($PSQL "SELECT best_game_guesses FROM users WHERE user_id=$USER_ID")

if [[ $BEST_GAME > $NUMBER_OF_GUESSES || $BEST_GAME == 0 ]]
then
  UPDATE_BEST_GAME=$($PSQL "UPDATE users SET best_game_guesses=$NUMBER_OF_GUESSES WHERE user_id=$USER_ID")
fi

INSERT_GAMES_NUM_OF_GUESSES=$($PSQL "INSERT INTO games(number_of_guesses, secret_number, user_id) VALUES ($NUMBER_OF_GUESSES, $SECRET_NUMBER, $USER_ID)")

echo "You guessed it in $NUMBER_OF_GUESSES tries. The secret number was $SECRET_NUMBER. Nice job!"

