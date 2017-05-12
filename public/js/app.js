angular
  .module("matchup", [
    "ui.router",
    "ngResource"
  ])
  .config([
    "$stateProvider",
    RouterFunction
  ])
  .factory("factory", [
    "$resource",
    FactoryFunction
  ])
  // .factory("LeagueFactory", [
  //   "$resource",
  //   LeagueFactoryFunction
  // ])
  .controller("LeagueIndexController", [
    "LeagueFactory",
    LeagueIndexControllerFunction
  ])
  // .controller("TeamIndexController", [
  //   "TeamFactory",
  //   TeamIndexControllerFunction
  // ])
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
    .state("teamShow", {
      url: "/teams/:id",
      templateUrl: "js/ng-views/team.html",
      controller: "TeamShowController",
      controllerAs: "vm"
    })

  }

// When you select one team, the URL will change to that ID, and then when yo select hte second team
function FactoryFunction($resource) {
  return $resource("http://localhost:3000/teams/:id.json")
}
// function LeagueFactoryFunction($resource) {
//   return $resource("http://locahost:3000")
// }

function LeagueIndexControllerFunction() {
  this.leagues = LeagueFactory.query();
}

function TeamShowControllerFunction(){
  this.team = TeamFactory.get({id: $stateParams.id})
}
