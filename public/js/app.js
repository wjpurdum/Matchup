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
    "$stateParams",
    "$resource",
    "TeamFactory",
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
      url: "/teams/:id",
      templateUrl: "js/ng-views/show.html",
      controller: "TeamShowController",
      controllerAs: "vm"
    })
  }

function LeagueFactoryFunction($resource) {
  return $resource("http://localhost:3000/leagues/:id")
}
function TeamFactoryFunction($resource) {
  return $resource("http://localhost:3000/leagues/:id/teams/:id")
}

function LeagueIndexControllerFunction($scope, $http, LeagueFactory) {
  this.leagues = LeagueFactory.query()
  console.log(this.league)
  // Use API call to access fixture data
  let url = "http://api.football-data.org/v1/competitions/426/fixtures"
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

function TeamShowControllerFunction($scope, $http, $stateParams, $resource, TeamFactory){
  // this.team = TeamFactory.get({id: $stateParams.id})

  // Use API call to access player data
  let url = "http://api.football-data.org/v1/teams/340/players"
  $http.get(url).success( function(response) {
    $scope.league = response
    // Set all players to a variable
    let allPlayers = response.players
    // Loop through and print player information
    for(var i = 0; i < allPlayers.length; i++){
      // We need the players ages... the year of birth is the first 4 characters in the date of birth string value
      let playerDob = allPlayers[i].dateOfBirth
      let playerYob = parseInt(playerDob.substring(0, 5))
      let currentDate = new Date()
      let currentYear = currentDate.getFullYear()
      // console.log(`Name: ${allPlayers[i].name} | Position: ${allPlayers[i].position} | Age: ${currentYear - playerYob} | Nationality: ${allPlayers[i].nationality}`)
    }
  })
}

function LeagueShowControllerFunction(LeagueFactory, $stateParams) {
  this.league = LeagueFactory.get({id: $stateParams.id})
  console.log('works')
}

function TeamIndexControllerFunction(TeamFactory, $stateParams) {
  this.teams = TeamFactory.query()

}
