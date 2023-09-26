#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
echo $($PSQL "TRUNCATE TABLE games, teams;")

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  if [[ $WINNER != "winner" ]]
  then
    TEAM_NAME=$($PSQL "select team_id from teams where name='$WINNER';")

    # if name is empty insert it to table else check in opponent name
    if [[ -z $TEAM_NAME ]]
    then
        TEAM_ID=$($PSQL "select team_id from teams where name='$WINNER';")
        TEAM_NAME=$WINNER
    else
        TEAM_ID=$($PSQL "select team_id from teams where name='$OPPONENT';")
        TEAM_NAME=$OPPONENT
    fi
    # if not found
    if [[ -z $TEAM_ID ]]
    then
        # insert team name
        INSERT_TEAM_NAME=$($PSQL "insert into teams(name) values('$TEAM_NAME');")
        if [[ $INSERT_TEAM_NAME == "INSERT 0 1" ]]
        then
          echo Inserted into teams, $TEAM_NAME
        fi
    fi

  fi 
done

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  if [[ $ROUND != "round" ]]
  then
    WINNER_ID=$($PSQL "select team_id from teams where name='$WINNER';")
    OPPONENT_ID=$($PSQL "select team_id from teams where name='$OPPONENT';")

    INSERT_GAME_RESULT==$($PSQL "insert into games(round, year, winner_goals, opponent_goals, winner_id, opponent_id) values('$ROUND', $YEAR, $WINNER_GOALS, $OPPONENT_GOALS, $WINNER_ID, $OPPONENT_ID);")
    if [[ $INSERT_GAME_RESULT == "INSERT 0 6" ]]
      then
        echo Inserted into game, $ROUND
    fi
  fi
