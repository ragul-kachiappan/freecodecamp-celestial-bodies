#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
echo $($PSQL "TRUNCATE TABLE games, teams")
cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  if [[ $YEAR != "year" ]]
  then
    #get team_id
    W_TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
    O_TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")

    #if winner team id not found
    if [[ -z $W_TEAM_ID ]]
    then
      #insert team
      $PSQL "INSERT INTO teams(name) VALUES('$WINNER')"
      #get new winner team id
      W_TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
    fi
    #if opponent team id not found
    if [[ -z $O_TEAM_ID ]]
    then
      #insert team
      $PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')"
      #get new opponent team id
      O_TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
    fi
    $PSQL "INSERT INTO games(year,round,winner_id,opponent_id,winner_goals,opponent_goals) VALUES('$YEAR','$ROUND','$W_TEAM_ID','$O_TEAM_ID','$WINNER_GOALS','$OPPONENT_GOALS')"
  fi
done
