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
    "TeamFactory",
    "$stateParams",
    TeamShowControllerFunction
  ])


  function RouterFunction($stateProvider) {
    $stateProvider
    .state("leagueIndex", {
      url: "/",
      templateUrl: "js/ng-views/index.html",
      controller: "LeagueIndexController",
      controllerAs: "vm"
    })
    .state("teamShow", {
      url: "/teams/:id",
      templateUrl: "js/ng-views/team.html",
      controller: "TeamShowController",
      controllerAs: "vm"
    })
    .state("leagueShow", {
      url: "/leagues/:id",
      templateUrl: "js/ng-views/league.html",
      controller: "LeagueShowController",
      controllerAs: "vm"
    })
    .state("teamIndex", {
      url: "/leagues/:id/teams",
      templateUrl: "js/ng-views/.html",
      controller: "TeamIndexControllerFunction",
      controllerAs: "vm"
    })
  }

function LeagueFactoryFunction($resource) {
  return $resource("http://localhost:3000/leagues")
}
function TeamFactoryFunction($resource) {
  return $resource("http://locahost:3000/teams/:id")
}

function LeagueIndexControllerFunction($scope, $http, LeagueFactory) {
  this.leagues = LeagueFactory.query();

  var url = "http://api.football-data.org/v1/competitions/426/fixtures";
    $http.get(url).success( function(response) {
       $scope.leagues = response;
       let allFixtures = response.fixtures;
       let teamOne = "Southampton FC";
       let teamTwo = "Stoke City FC"
       console.log(allFixtures)
       // Loop through fixtures and print fixture that matches team names
       for(var i = 0; i < allFixtures.length; i++){
          if((teamOne == allFixtures[i].homeTeamName || teamOne == allFixtures[i].awayTeamName) && (teamTwo == allFixtures[i].homeTeamName || teamTwo == allFixtures[i].awayTeamName)){
            console.log(allFixtures[i])
          }
       }
    });
}

function TeamShowControllerFunction(){
  this.team = TeamFactory.get({id: $stateParams.id})
}

function LeagueShowControllerFunction(LeagueFactory, $stateParams) {
  this.league = LeagueFactory.get({id: $stateParams.id})
}

function TeamIndexControllerFunction(TeamFactory, $stateParams) {
  this.teams = TeamFactory.query();
}
