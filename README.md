# NFL Football Pool Application

**Description**

In this application, I will attempt to build a full-stack web application for users to participate in a regular season NFL football tournament pool. I will build the application utilizing Java and PostgreSQL for the back end and HTML, CSS, and Vue.js on the front end.

**Status**

Work-in-progress: early stage

**Back End**
Database
1. Database schema complete with initial teams populated. Team IDs and names match ESPN.com team IDs.
  a. Need to create a file (.sh) to run database setup and guide user through setup of database.
  b. Give further consideration to database entry datatypes and restrictions. Should also figure out priviliges limitations.

Model/Controller - Back End
1. Will need a service that gets games/scores from ESPN.com and deserializes to objects. Problems include no API with ESPN and GET returns non-JSON object, so parsing is tricky.
  a. Also need corresponding DAO to input games/scores in game table in database.
2. Will need controller to get user input from web form with corresponding DAO to input user picks in user_pick table in database.
3. Will need controller for user log-in with corresponding DAO.
4. Probably need scoreboard/game, team, and user classes within the model.
5. ...

View - Front End
1. Will need the following pages: 
  a. Landing with log-in/register
  b. Upcoming matches
  c. Pick selection
  d. Current standings relative to other users
