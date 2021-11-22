# NFL Football Pool Application

**Description**

In this application, I am attempting to build a full-stack web application for users to participate in a regular season NFL football tournament pool. I will build the application utilizing Java and PostgreSQL for the back end and HTML, CSS, and Vue.js on the front end.

**Status**

Work-in-progress: early stage

**Database**

- Database schema complete with initial teams populated, which can be found in the nfl_app/database folder. Team IDs and names match ESPN.com team IDs.
  - Need to create a file (.sh) to run database setup and guide user through setup of database.
  - Give further consideration to database entry datatypes and restrictions. Should also figure out priviliges limitations.

**Model/Controller - Back End**

- Will need a service that gets games/scores from ESPN.com and deserializes to objects. Problems include no API with ESPN and GET returns non-JSON object, so parsing is tricky.
  - Also need corresponding DAO to input games/scores in game table in database.
- Will need controller to get user input from web form with corresponding DAO to input user picks in user_pick table in database.
- Will need controller for user log-in with corresponding DAO.
- Probably need scoreboard/game, team, and user classes within the model.
- ...

**View - Front End**

- Will need the following pages: 
  - Landing with log-in/register
  - Upcoming matches
  - Pick selection
  - Current standings relative to other users
  - Pool owner admin approval of users in pools
