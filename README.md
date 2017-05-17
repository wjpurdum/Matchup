# The-Matchup
MVP/Bronze
A user will be able to select 2 teams to compare and view their joint game data
A user will be able to see an individual team page that contains team roster

Silver
A user can view "news flashes" on the the page that changes every few seconds
A user will be able to post a comment to a match up page (view of 2 teams being compared)
A user will be able to view an individual player's page that contains their personal data

Gold
A user will be able to see a "history" of their previous match-ups
A user will be able to favorite match-ups
Responsibility of each member of the team:

Approach
We combined our Rails API, which includes 2 models for basic league and team data, with an external API that contains detailed data on games and players.

Unsolved Problems
1. We were unable to pull the individual team crest and name on the League Show page due to our model relationships.

2. As of initial deployment, we could not pull the team crest and team name on the Team Show page. We would like to resolve this in the near future.

3. Some teams do not have player data

External API: football-data.org

Installation
1. Fork repo
2. Clone to your computer using `git clone git@github.com:wjpurdum/The-Matchup.git`


Amlak Girma
- Seed data
- Schema
- Build models and migrations
- Research on ng-show and ng-repeat
- Constructed Team Show page

Halimatu Bakarr
- CSS
- Rails controllers
- Initial AJAX requests in Angular
- Deployed Rails API

Whitney Purdum
- Angular Controllers and Functions
- Team Show Page construction
- JavaScript logic for Ajax requests
