angular
  .module("matchup", [
    "ui.router",
    "ngResource"
  ])
  .config([
    "$stateProvider",
    RouterFunction
  ])
  .factory("teamFactory", [
    "$resource",
    TeamFactoryFunction
  ])
  .factory("LeagueFactory", [
    "$resource",
    LeagueFactoryFunction
  ])
  .controller("LeagueIndexController", [
    "LeagueFactory",
    LeagueIndexControllerFunction
  ])
  .controller("TeamIndexController", [
    "TeamFactory",
    TeamIndexControllerFunction
  ])
  .controller("TeamShowController", [
    "TeamFactory",
    TeamShowControllerFunction
  ])



  // FUNCTIONS

  function RouterFunction($stateProvider) {
    $stateProvider
    .state("LeagueIndex", {
      templateUrl: "/",
      templateUrl: "index.html",
      controller: "LeagueIndexController",
      controllerAs: "vm"
    })

  }

// FUNCTIONS




function TeamFactoryFunction() {

}

function LeagueFactoryFunction() {

}

function LeagueIndexControllerFunction() {

}
function LeagueIndexControllerFunction() {

}
