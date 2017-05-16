angular
  .module("matchup", [
    "ui.router",
    "ngResource"
  ])
  .config([
    "$stateProvider",
    RouterFunction
  ])
  .factory("LeagueFactory", [
    "$resource",
    LeagueFactoryFunction
  ])
  .factory("TeamFactory", [
    "$resource",
    TeamFactoryFunction
  ])
  .controller("LeagueIndexController", [
    "$scope",
    "$http",
    "LeagueFactory",
    LeagueIndexControllerFunction

  ])
  .controller("LeagueShowController", [
    "$scope",
    "$http",
    "LeagueFactory",
    "$stateParams",
    LeagueShowControllerFunction
  ])
  .controller("TeamIndexController", [
    "TeamFactory",
    TeamIndexControllerFunction
  ])
  .controller("TeamShowController", [
    "$scope",
    "$http",
    "TeamFactory",
    "$stateParams",
    "$resource",
    TeamShowControllerFunction
  ])

  function RouterFunction($stateProvider) {
    $stateProvider
    .state("leagueIndex", {
      url: "/",
      templateUrl: "js/ng-views/leagues/index.html",
      controller: "LeagueIndexController",
      controllerAs: "vm"
    })
    .state("leagueShow", {
      url: "/leagues/:id",
      templateUrl: "js/ng-views/leagues/show.html",
      controller: "LeagueShowController",
      controllerAs: "vm"
    })
    .state("teamIndex", {
      url: "/leagues/:id/teams",
      templateUrl: "js/ng-views/teams/index.html",
      controller: "TeamIndexControllerFunction",
      controllerAs: "vm"
    })
    .state("teamShow", {
      url: "/leagues/:league_id/teams/:id",
      templateUrl: "js/ng-views/teams/show.html",
      controller: "TeamShowController",
      controllerAs: "vm"
    })
  }

function LeagueFactoryFunction($resource) {
  return $resource("http://localhost:3000/leagues/:id")
}
function TeamFactoryFunction($resource) {
  return $resource("http://localhost:3000/leagues/:league_id/teams/:id")
}

function LeagueIndexControllerFunction( $scope, $http, LeagueFactory) {
  this.leagues = LeagueFactory.query()
  console.log(this.league)
  // Use API call to access fixture data
  let url = "http://api.football-data.org/v1/competitions/426/fixtures"
  // var team_one =
  // var team_two =
  $http.get(url).success( function(response) {
     $scope.leagues = response
     // Set all fixtures into a variable
     let allFixtures = response.fixtures
     // Assign variables to drop down selection of teams
     let teamOne = "Southampton FC"
     let teamTwo = "Stoke City FC"
     console.log(allFixtures)
     // Loop through fixtures and print fixture that selected team shares
     for(var i = 0; i < allFixtures.length; i++){
        if((teamOne == allFixtures[i].homeTeamName || teamOne == allFixtures[i].awayTeamName) && (teamTwo == allFixtures[i].homeTeamName || teamTwo == allFixtures[i].awayTeamName)){
          console.log(allFixtures[i])
        }
     }
  })

}
function TeamShowControllerFunction(  $scope,
  $http,
  TeamFactory,
  $stateParams,
  $resource){
  this.team = TeamFactory.get({league_id: $stateParams.league_id, id: $stateParams.id})
  // this.league = LeagueFactory.get({id: $stateParams.id})
  this.players = []
  let self = this
  // Use API call to access player data
  // let url = this.team.players
  let url = "http://api.football-data.org/v1/teams/322/players"
  $http.get(url, {headers:{'X-Auth-Token':'5ad07ef4d0c84fb893ca3bb738bd0a01'}}).success( function(response) {
    // $scope.league = response
    // Set all players to a variable
    self.players = []
    let allPlayers = response.players
    // Loop through and print player information
    for(var i = 0; i < allPlayers.length; i++){
      // We need the players ages... the year of birth is the first 4 characters in the date of birth string value
      self.players.push(allPlayers[i])
      // self.players.push(allPlayers[i].position)
      // self.players.push(allPlayers[i].jerseyNumber)
      // self.players.push(allPlayers[i].nationality)
      let playerDob = allPlayers[i].dateOfBirth
      let playerYob = parseInt(playerDob.substring(0, 5))
      let currentDate = new Date()
      let currentYear = currentDate.getFullYear()
      // console.log(`Name: ${allPlayers[i].name} | Position: ${allPlayers[i].position} | Age: ${currentYear - playerYob} | Nationality: ${allPlayers[i].nationality}`)
    }
    console.log(self.players)
  })
}

function LeagueShowControllerFunction($scope, $http, LeagueFactory, $stateParams) {
  this.league = LeagueFactory.get({id: $stateParams.id})

  this.fixtures = []
  $scope.showfixtures = false;

  this.teamOne = "0"
  this.teamTwo = "0"
  let self = this
  let params = $stateParams.id



  this.grabFixtures = function(){
    console.log("this is teams!", this.league.teams)
    $scope.showfixtures = true;
    var url = ""
    console.log(params)
    if (params == "2") {
      var url = "http://api.football-data.org/v1/competitions/427/fixtures"
    } else {
      var url = "http://api.football-data.org/v1/competitions/426/fixtures"
    }
    console.log(url)
    console.log('clicked')
    // let url = "http://api.football-data.org/v1/competitions/426/fixtures"
    $http.get(url, {headers:{'X-Auth-Token':'5ad07ef4d0c84fb893ca3bb738bd0a01'}})
      .success( function(response) {
         //$scope.leagues = response
         // Set all fixtures into a variable
         let allFixtures = response.fixtures

         self.fixtures = []
         console.log(allFixtures)


         teamOneMatch = self.league.teams.find((el, idx, arr)=>{
           return el.name = self.teamOne;
         })
         console.log(allFixtures)
         teamTwoMatch = self.league.teams.find((el, idx, arr)=>{
           return el.name = self.teamTwo;
         })
         teamOneId = teamOneMatch.id;
         teamTwoId = teamTwoMatch.id;
         // Loop through fixtures and print fixture that selected team shares
         for(var i = 0; i < allFixtures.length; i++){
            if((self.teamOne == allFixtures[i].homeTeamName || self.teamOne == allFixtures[i].awayTeamName)
            && (self.teamTwo == allFixtures[i].homeTeamName || self.teamTwo == allFixtures[i].awayTeamName)){

              console.log(allFixtures[i])

              if(allFixtures[i].homeTeamName == self.teamOne){
                allFixtures[i].homeTeamId = teamOneId;
                allFixtures[i].awayTeamId = teamTwoId;
              }
              else {
                allFixtures[i].homeTeamId = teamTwoId;
                allFixtures[i].awayTeamId = teamOneId;
              }
              allFixtures[i].awayTeamId

              self.fixtures.push(allFixtures[i])
              console.log(allFixturesResult)
            //  console.log(self.fixtures)
            }
         }
      })
  }
}

function TeamIndexControllerFunction(TeamFactory, $stateParams) {
  this.teams = TeamFactory.query()

}
