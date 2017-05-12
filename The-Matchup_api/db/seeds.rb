# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


League.destroy_all
Team.destroy_all

premier_league = League.create({
  name: "Premier League",
  number_matches: 380,
  number_teams: 20,
  year: 2016
  })
English_league = English.create({
  name: "English "
  })

Team.create([
  {
  team_name: "Hull City FC",
  crest_url: "http://upload.wikimedia.org/wikipedia/de/a/a9/Hull_City_AFC.svg",
  league: premier_league,
  fixtures: "http://api.football-data.org/v1/teams/322/fixtures",
  self: "http://api.football-data.org/v1/teams/322",
  players: "http://api.football-data.org/v1/teams/322/players"
},
{
  team_name: "Leicester City FC",
  crest_url: "http://upload.wikimedia.org/wikipedia/en/6/63/Leicester02.png",
  league: premier_league,
   fixtures: "http://api.football-data.org/v1/teams/338/fixtures",
    self: "http://api.football-data.org/v1/teams/338",
   players: "http://api.football-data.org/v1/teams/338/players"
 },
 {
 team_name: "Southampton FC",
 crest_url: "http://upload.wikimedia.org/wikipedia/de/c/c9/FC_Southampton.svg",
 league: premier_league,
 fixtures: "http://api.football-data.org/v1/teams/340/fixtures",
 self: "http://api.football-data.org/v1/teams/340",
 players: "http://api.football-data.org/v1/teams/340/fixtures",
 },
 {
 team_name: "Watford FC",
 crest_url: "https://upload.wikimedia.org/wikipedia/en/e/e2/Watford.svg",
 league: premier_league,
 fixtures: "http://api.football-data.org/v1/teams/346/fixtures",
 self: "http://api.football-data.org/v1/teams/346",
 players: "http://api.football-data.org/v1/teams/346/players"
 },
 {
 team_name: "Middlesbrough FC",
 crest_url: "https://upload.wikimedia.org/wikipedia/en/2/2c/Middlesbrough_FC_crest.svg",
 league: premier_league,
 fixtures: "http://api.football-data.org/v1/teams/343/fixtures",
 self: "http://api.football-data.org/v1/teams/343/fixtures",
 players: "http://api.football-data.org/v1/teams/343/players"
 },
 {
 team_name: "Stoke City FC",
 crest_url: "http://upload.wikimedia.org/wikipedia/de/a/a3/Stoke_City.svg",
 league: premier_league,
 fixtures: "http://api.football-data.org/v1/teams/70/fixtures",
 self: "http://api.football-data.org/v1/teams/70",
 players: "http://api.football-data.org/v1/teams/70/players"
 },
 {
team_name: "Everton FC",
crest_url: "http://upload.wikimedia.org/wikipedia/de/f/f9/Everton_FC.svg",
league: premier_league,
fixtures: "http://api.football-data.org/v1/teams/62/fixtures",
self: "http://api.football-data.org/v1/teams/62",
players: "http://api.football-data.org/v1/teams/62/players"
 },
 {
 team_name: "Tottenham Hotspur FC",
 crest_url: "http://upload.wikimedia.org/wikipedia/de/b/b4/Tottenham_Hotspur.svg",
 league: premier_league,
 fixtures: "http://api.football-data.org/v1/teams/73/fixtures",
 self: "http://api.football-data.org/v1/teams/73",
 players:"http://api.football-data.org/v1/teams/73/players"
 },
 {
 team_name: "Crystal Palace FC",
 crest_url: "http://upload.wikimedia.org/wikipedia/de/b/bf/Crystal_Palace_F.C._logo_(2013).png",
 league: premier_league,
 fixtures: "http://api.football-data.org/v1/teams/354/fixtures",
 self: "http://api.football-data.org/v1/teams/354",
 players: "http://api.football-data.org/v1/teams/354/players"
 },
 {
 team_name:"West Bromwich Albion FC",
 crest_url: "http://upload.wikimedia.org/wikipedia/de/8/8b/West_Bromwich_Albion.svg",
 league: premier_league,
 fixtures: "http://api.football-data.org/v1/teams/74/fixtures",
 self: "http://api.football-data.org/v1/teams/74",
 players: "http://api.football-data.org/v1/teams/74/players"
 },
 {
  team_name: "Burnley FC",
  crest_url: "https://upload.wikimedia.org/wikipedia/en/0/02/Burnley_FC_badge.png",
  league: premier_league,
  fixtures: "http://api.football-data.org/v1/teams/328/fixtures",
  self: "http://api.football-data.org/v1/teams/328",
  players: "http://api.football-data.org/v1/teams/328/players",
},
{
    team_name: "Swansea City FC",
    crest_url: "http://upload.wikimedia.org/wikipedia/de/a/ab/Swansea_City_Logo.svg",
    league: premier_league,
    fixtures: "http://api.football-data.org/v1/teams/72/fixtures",
    self: "http://api.football-data.org/v1/teams/72",
    players: "http://api.football-data.org/v1/teams/72/players"
  },
  {
    team_name: "Manchester City FC",
    crest_url: "https://upload.wikimedia.org/wikipedia/en/e/eb/Manchester_City_FC_badge.svg",
    league: premier_league,
    fixtures: "http://api.football-data.org/v1/teams/65/fixtures",
    self: "http://api.football-data.org/v1/teams/65",
    players: "http://api.football-data.org/v1/teams/65/players"
  },
  {
    team_name: "Sunderland AFC",
    crest_url: "http://upload.wikimedia.org/wikipedia/de/6/60/AFC_Sunderland.svg",
    league: premier_league,
    fixtures: "http://api.football-data.org/v1/teams/71/fixtures",
    self: "http://api.football-data.org/v1/teams/71",
    players: "http://api.football-data.org/v1/teams/71/players"
  },
   {
    team_name: "AFC Bournemouth",
    crest_url: "https://upload.wikimedia.org/wikipedia/de/4/41/Afc_bournemouth.svg",
    league: premier_league,
    fixtures: "http://api.football-data.org/v1/teams/1044/fixtures",
    self: "http://api.football-data.org/v1/teams/1044",
    players: "http://api.football-data.org/v1/teams/1044/players"
  },
{
  team_name: "Manchester United FC",
  crest_url: "http://upload.wikimedia.org/wikipedia/de/d/da/Manchester_United_FC.svg",
  league: premier_league,
  fixtures: "http://api.football-data.org/v1/teams/66/fixtures",
  self: "http://api.football-data.org/v1/teams/66",
  players: "http://api.football-data.org/v1/teams/66/players"
},
{
  team_name: "Arsenal FC",
  crest_url: "http://upload.wikimedia.org/wikipedia/en/5/53/Arsenal_FC.svg",
  league: premier_league,
  fixtures: "http://api.football-data.org/v1/teams/57/fixtures",
  self: "http://api.football-data.org/v1/teams/57",
  players: "http://api.football-data.org/v1/teams/57/players"
},
{
  team_name: "Liverpool FC",
  crest_url: "http://upload.wikimedia.org/wikipedia/de/0/0a/FC_Liverpool.svg",
  league: premier_league,
  fixtures: "http://api.football-data.org/v1/teams/64/fixtures",
  self: "http://api.football-data.org/v1/teams/64",
  players: "http://api.football-data.org/v1/teams/64/players"
},
{
  team_name: "Chelsea FC",
  crest_url: "http://upload.wikimedia.org/wikipedia/de/5/5c/Chelsea_crest.svg",
  league: premier_league,
  fixtures: "http://api.football-data.org/v1/teams/61/fixtures",
  self: "http://api.football-data.org/v1/teams/61",
  players: "http://api.football-data.org/v1/teams/61/players"
},
{
  team_name: "West Ham United FC",
  crest_url: "http://upload.wikimedia.org/wikipedia/de/e/e0/West_Ham_United_FC.svg",
  league: premier_league,
  fixtures: "http://api.football-data.org/v1/teams/563/fixtures",
  self: "http://api.football-data.org/v1/teams/563",
  players: "http://api.football-data.org/v1/teams/563/players"
}
   ])
