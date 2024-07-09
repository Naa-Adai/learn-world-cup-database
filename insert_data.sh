#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

echo "$($PSQL "truncate teams, games")"

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do 
  if [[ $WINNER != "winner" ]]
  then
    #get team_id
    TEAM_ID=$($PSQL "select team_id from teams where name = '$WINNER'")
    #if not found
    if [[ -z $TEAM_ID ]]
    then
      #insert name
      INSERT_NAME_RESULT=$($PSQL "insert into teams(name) values('$WINNER')")
      if [[ $INSERT_NAME_RESULT == "INSERT 0 1" ]]
      then
        echo Inserted into name, $WINNER
      fi 
      #get new year_id
      TEAM_ID=$($PSQL "select team_id from teams where name = '$WINNER'")
    fi

    #get team_id
    TEAM_ID=$($PSQL "select team_id from teams where name = '$OPPONENT'")
    #if not found
    if [[ -z $TEAM_ID ]]
    then
      #insert name
      INSERT_NAME_RESULT=$($PSQL "insert into teams(name) values('$OPPONENT')")
      if [[ $INSERT_NAME_RESULT == "INSERT 0 1" ]]
      then
        echo Inserted into name, $OPPONENT
      fi 
      #get new year_id
      TEAM_ID=$($PSQL "select team_id from teams where name = '$OPPONENT'")
    fi
  fi
done

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do 
  if [[ $YEAR != "year" ]]
  then
    #get team_id
    WINNER_TEAM_ID=$($PSQL "select team_id from teams where name = '$WINNER'")
    #if not found
    if [[ -z $WINNER_TEAM_ID ]]
    then
      #set team_id to null
      WINNER_TEAM_ID=null 
    fi

    #get team_id
    OPPONENT_TEAM_ID=$($PSQL "select team_id from teams where name = '$OPPONENT'")
    #if not found
    if [[ -z $OPPONENT_TEAM_ID ]]
    then
      #set team_id to null
      OPPONENT_TEAM_ID=null 
    fi

    #insert game
    INSERT_GAME_RESULT=$($PSQL "insert into games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) values('$YEAR', '$ROUND', $WINNER_TEAM_ID, $OPPONENT_TEAM_ID, $WINNER_GOALS, $OPPONENT_GOALS)")
    if [[ $INSERT_GAME_RESULT == "INSERT 0 1" ]]
    then
      echo Inserted into games, $YEAR $ROUND $WINNER_TEAM_ID $OPPONENT_TEAM_ID $WINNER_GOALS $OPPONENT_GOALS
    fi

  fi
done