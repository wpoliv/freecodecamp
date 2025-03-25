#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi
# Do not change code above this line. Use the PSQL variable above to query your database.
echo $($PSQL "TRUNCATE teams, games")
cat games.csv | while IFS=, read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  if [[ $YEAR != year ]]
  then
    #get winner_id
    WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
    #not found
    if [[ -z $WINNER_ID ]]
    then
      #insert new team
      INSERT_NEW_TEAM_RESULT=$($PSQL "INSERT INTO teams (name) VALUES('$WINNER')")
      if [[ $INSERT_NEW_TEAM_RESULT == "INSERT 0 1" ]]
      then
        echo New team inserted on teams table: $WINNER
      fi
    fi
    #get new team_id
    WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")

    #get opponent_id
    OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
    #not found
    if [[ -z $OPPONENT_ID ]]
    then
      #insert new team
      INSERT_NEW_TEAM_RESULT=$($PSQL "INSERT INTO teams (name) VALUES('$OPPONENT')")
      if [[ $INSERT_NEW_TEAM_RESULT == "INSERT 0 1" ]]
      then
        echo New team inserted on teams table: $OPPONENT
      fi
    fi
    #get new opponent_id
    OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
  fi
done
cat games.csv | while IFS=, read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  #get winner id
  WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
  #get opponent id
  OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
  #insert rows into games
  INSERT_GAME_RESULT=$($PSQL "INSERT INTO games (year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES ($YEAR, '$ROUND', $WINNER_ID, $OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS)")
  if [[ $INSERT_GAME_RESULT == "INSERT 0 1" ]]
  then
    echo $YEAR : $ROUND : $WINNER : $OPPONENT : $WINNER_GOALS : $OPPONENT_GOALS was inserted in games table.
  fi
done