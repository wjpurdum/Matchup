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

function LeagueIndexControllerFunction( $scope, $http, LeagueFactory) {
  this.leagues = LeagueFactory.query()
  console.log(this.league)
  // Use API call to access fixture data
}

function TeamShowControllerFunction($scope, $http, $stateParams, $resource, TeamFactory){
  // this.team = TeamFactory.get({id: $stateParams.id})
  let self = this
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

function LeagueShowControllerFunction($scope, $http, LeagueFactory, $stateParams) {
  this.league = LeagueFactory.get({id: $stateParams.id})

  this.fixtures = []

  this.teamOne = "0"
  this.teamTwo = "0"

  let self = this

  this.grabFixtures = function(){
    console.log('clicked')
  let url = "http://api.football-data.org/v1/competitions/426/fixtures"
    $http.get(url, {headers:{'X-Auth-Token':'f6cb91b4ca1a41bd9f94afbbe66c06d1'}})
      .success( function(response) {
         //$scope.leagues = response
         // Set all fixtures into a variable
         let allFixtures = response.fixtures

         self.fixtures = []

         console.log(allFixtures)
         // Loop through fixtures and print fixture that selected team shares
         for(var i = 0; i < allFixtures.length; i++){
            if((self.teamOne == allFixtures[i].homeTeamName || self.teamOne == allFixtures[i].awayTeamName)
            && (self.teamTwo == allFixtures[i].homeTeamName || self.teamTwo == allFixtures[i].awayTeamName)){
              console.log(allFixtures[i])
              self.fixtures.push(allFixtures[i])
              console.log(self.fixtures)
            }
         }
      })
  }
}

function TeamIndexControllerFunction(TeamFactory, $stateParams) {
  this.teams = TeamFactory.query()

}
