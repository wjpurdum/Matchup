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

efl_championchip =


Team.create([
  {
  team_name: "Hull City FC",
  crest_url: "http://upload.wikimedia.org/wikipedia/de/a/a9/Hull_City_AFC.svg",
  league: premier_league,
  fixtures: "http://api.football-data.org/v1/teams/322/fixtures",
  self: "http://api.football-data.org/v1/teams/322",
  players: "http://api.football-data.org/v1/teams/322/players"
},






  ])
