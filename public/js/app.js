angular
  .module("matchup", ["ui.router", "ngResource"])
  .config(["$stateProvider", RouterFunction])
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

  ])

  // FUNCTIONS

  function RouterFunction($stateProvider) {
    $stateProvider
    .state("LeagueIndexControllerFunction")

  }



  function TeamFactoryFunction() {

  }

  function LeagueFactoryFunction() {

  }

  function LeagueIndexControllerFunction() {

  }
