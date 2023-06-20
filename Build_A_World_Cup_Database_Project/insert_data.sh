#! /bin/bash

if [[ $1 == "test" ]]; then
    PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
    PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

#star empy

echo $($PSQL "TRUNCATE TABLE games, teams")

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS; do

    #we have the team names for each game
    #we will look for that name in the database,
    #if it is not there, we will add it.

    #INSERT TABLE TEAMS
    #Winners names
    if [[ $WINNER != "winner" ]]
        then
        #get_name
        TEAM_NAME=$($PSQL "SELECT name FROM teams WHERE name='$WINNER'")

        if [[ -z $TEAM_NAME ]]
            then

            #insert name
            INSERT_NAME_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")

            if [[ $INSERT_NAME_RESULT == "INSERT 0 1" ]] 
            then
                echo Inserted team name, $WINNER
            fi

        fi
    fi
    #Opponent names
    if [[ $OPPONENT != "opponent" ]]; then
        #get_name
        TEAM_NAME2=$($PSQL "SELECT name FROM teams WHERE name='$OPPONENT'")

        if [[ -z $TEAM_NAME2 ]]; then

            #insert name
            INSERT_NAME_RESULT2=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")

            if [[ $INSERT_NAME_RESULT2 == "INSERT 0 1" ]]; then
                echo Inserted team name, $OPPONENT
            fi
        fi
    fi

    # INSERT GAMES TABLE 

    if [[ YEAR != "year" ]]; then
        #GET WINNER_ID
        WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
        #GET OPPONENT_ID
        OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
        #INSERT NEW GAMES ROW
        INSERT_GAME=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES ($YEAR, '$ROUND', $WINNER_ID, $OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS)")
          # ECHO DATA INSERT
          if [[ $INSERT_GAME == "INSERT 0 1" ]]; then
              echo New game added: $YEAR, $ROUND, $WINNER_ID VS $OPPONENT_ID, score $WINNER_GOALS : $OPPONENT_GOALS
          fi
    fi


done



