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
english_league = League.create({
  name: "English League Championship",
  number_matches: 62,
  number_teams: 32,
  year: 2016
})



Team.create([
  {
    team_name: "Hull City FC",
    crest_url: "https://upload.wikimedia.org/wikipedia/de/a/a9/Hull_City_AFC.svg",
    league: premier_league,
    fixtures: "https://api.football-data.org/v1/teams/322/fixtures",
    self: "https://api.football-data.org/v1/teams/322",
    players: "https://api.football-data.org/v1/teams/322/players"
  },
  {
    team_name: "Leicester City FC",
    crest_url: "https://upload.wikimedia.org/wikipedia/en/6/63/Leicester02.png",
    league: premier_league,
    fixtures: "https://api.football-data.org/v1/teams/338/fixtures",
    self: "https://api.football-data.org/v1/teams/338",
    players: "https://api.football-data.org/v1/teams/338/players"
  },
  {
    team_name: "Southampton FC",
    crest_url: "https://upload.wikimedia.org/wikipedia/de/c/c9/FC_Southampton.svg",
    league: premier_league,
    fixtures: "https://api.football-data.org/v1/teams/340/fixtures",
    self: "https://api.football-data.org/v1/teams/340",
    players: "https://api.football-data.org/v1/teams/340/fixtures"
  },
  {
    team_name: "Watford FC",
    crest_url: "https://upload.wikimedia.org/wikipedia/en/e/e2/Watford.svg",
    league: premier_league,
    fixtures: "https://api.football-data.org/v1/teams/346/fixtures",
    self: "https://api.football-data.org/v1/teams/346",
    players: "https://api.football-data.org/v1/teams/346/players"
  },
  {
    team_name: "Middlesbrough FC",
    crest_url: "https://upload.wikimedia.org/wikipedia/en/2/2c/Middlesbrough_FC_crest.svg",
    league: premier_league,
    fixtures: "https://api.football-data.org/v1/teams/343/fixtures",
    self: "https://api.football-data.org/v1/teams/343/fixtures",
    players: "https://api.football-data.org/v1/teams/343/players"
  },
  {
    team_name: "Stoke City FC",
    crest_url: "https://upload.wikimedia.org/wikipedia/de/a/a3/Stoke_City.svg",
    league: premier_league,
    fixtures: "https://api.football-data.org/v1/teams/70/fixtures",
    self: "https://api.football-data.org/v1/teams/70",
    players: "https://api.football-data.org/v1/teams/70/players"
  },
  {
    team_name: "Everton FC",
    crest_url: "https://upload.wikimedia.org/wikipedia/de/f/f9/Everton_FC.svg",
    league: premier_league,
    fixtures: "https://api.football-data.org/v1/teams/62/fixtures",
    self: "https://api.football-data.org/v1/teams/62",
    players: "https://api.football-data.org/v1/teams/62/players"
  },
  {
    team_name: "Tottenham Hotspur FC",
    crest_url: "https://upload.wikimedia.org/wikipedia/de/b/b4/Tottenham_Hotspur.svg",
    league: premier_league,
    fixtures: "https://api.football-data.org/v1/teams/73/fixtures",
    self: "https://api.football-data.org/v1/teams/73",
    players:"https://api.football-data.org/v1/teams/73/players"
  },
  {
    team_name: "Crystal Palace FC",
    crest_url: "https://upload.wikimedia.org/wikipedia/de/b/bf/Crystal_Palace_F.C._logo_(2013).png",
    league: premier_league,
    fixtures: "https://api.football-data.org/v1/teams/354/fixtures",
    self: "https://api.football-data.org/v1/teams/354",
    players: "https://api.football-data.org/v1/teams/354/players"
  },
  {
    team_name:"West Bromwich Albion FC",
    crest_url: "https://upload.wikimedia.org/wikipedia/de/8/8b/West_Bromwich_Albion.svg",
    league: premier_league,
    fixtures: "https://api.football-data.org/v1/teams/74/fixtures",
    self: "https://api.football-data.org/v1/teams/74",
    players: "https://api.football-data.org/v1/teams/74/players"
  },
  {
    team_name: "Burnley FC",
    crest_url: "https://upload.wikimedia.org/wikipedia/en/0/02/Burnley_FC_badge.png",
    league: premier_league,
    fixtures: "https://api.football-data.org/v1/teams/328/fixtures",
    self: "https://api.football-data.org/v1/teams/328",
    players: "https://api.football-data.org/v1/teams/328/players"
  },
  {
    team_name: "Swansea City FC",
    crest_url: "https://upload.wikimedia.org/wikipedia/de/a/ab/Swansea_City_Logo.svg",
    league: premier_league,
    fixtures: "https://api.football-data.org/v1/teams/72/fixtures",
    self: "https://api.football-data.org/v1/teams/72",
    players: "https://api.football-data.org/v1/teams/72/players"
  },
  {
    team_name: "Manchester City FC",
    crest_url: "https://upload.wikimedia.org/wikipedia/en/e/eb/Manchester_City_FC_badge.svg",
    league: premier_league,
    fixtures: "https://api.football-data.org/v1/teams/65/fixtures",
    self: "https://api.football-data.org/v1/teams/65",
    players: "https://api.football-data.org/v1/teams/65/players"
  },
  {
    team_name: "Sunderland AFC",
    crest_url: "https://upload.wikimedia.org/wikipedia/de/6/60/AFC_Sunderland.svg",
    league: premier_league,
    fixtures: "https://api.football-data.org/v1/teams/71/fixtures",
    self: "https://api.football-data.org/v1/teams/71",
    players: "https://api.football-data.org/v1/teams/71/players"
  },
  {
    team_name: "AFC Bournemouth",
    crest_url: "https://upload.wikimedia.org/wikipedia/de/4/41/Afc_bournemouth.svg",
    league: premier_league,
    fixtures: "https://api.football-data.org/v1/teams/1044/fixtures",
    self: "https://api.football-data.org/v1/teams/1044",
    players: "https://api.football-data.org/v1/teams/1044/players"
  },
  {
    team_name: "Manchester United FC",
    crest_url: "https://upload.wikimedia.org/wikipedia/de/d/da/Manchester_United_FC.svg",
    league: premier_league,
    fixtures: "https://api.football-data.org/v1/teams/66/fixtures",
    self: "https://api.football-data.org/v1/teams/66",
    players: "https://api.football-data.org/v1/teams/66/players"
  },
  {
    team_name: "Arsenal FC",
    crest_url: "https://upload.wikimedia.org/wikipedia/en/5/53/Arsenal_FC.svg",
    league: premier_league,
    fixtures: "https://api.football-data.org/v1/teams/57/fixtures",
    self: "https://api.football-data.org/v1/teams/57",
    players: "https://api.football-data.org/v1/teams/57/players"
  },
  {
    team_name: "Liverpool FC",
    crest_url: "https://upload.wikimedia.org/wikipedia/de/0/0a/FC_Liverpool.svg",
    league: premier_league,
    fixtures: "https://api.football-data.org/v1/teams/64/fixtures",
    self: "https://api.football-data.org/v1/teams/64",
    players: "https://api.football-data.org/v1/teams/64/players"
  },
  {
    team_name: "Chelsea FC",
    crest_url: "https://upload.wikimedia.org/wikipedia/de/5/5c/Chelsea_crest.svg",
    league: premier_league,
    fixtures: "https://api.football-data.org/v1/teams/61/fixtures",
    self: "https://api.football-data.org/v1/teams/61",
    players: "https://api.football-data.org/v1/teams/61/players"
  },
  {
    team_name: "West Ham United FC",
    crest_url: "https://upload.wikimedia.org/wikipedia/de/e/e0/West_Ham_United_FC.svg",
    league: premier_league,
    fixtures: "https://api.football-data.org/v1/teams/563/fixtures",
    self: "https://api.football-data.org/v1/teams/563",
    players: "https://api.football-data.org/v1/teams/563/players"
  },
  {
    team_name: "Barnsley FC",
    crest_url: "https://upload.wikimedia.org/wikipedia/en/c/c9/Barnsley_FC.svg",
    league: english_league,
    fixtures: "https://api.football-data.org/v1/teams/357/fixtures",
    self: "https://api.football-data.org/v1/teams/357",
    players: "https://api.football-data.org/v1/teams/357/players"
  },
  {
    team_name: "Huddersfield Town",
    crest_url: "https://upload.wikimedia.org/wikipedia/commons/6/66/Huddersfield_Town_F.C.png",
    league: english_league,
    fixtures: "https://api.football-data.org/v1/teams/394/fixtures",
    self: "https://api.football-data.org/v1/teams/394",
    players: "https://api.football-data.org/v1/teams/394/players"
  },
  {
    team_name: "Brentford FC",
    crest_url: "",
    league: english_league,
    fixtures: "https://api.football-data.org/v1/teams/402/fixtures",
    self: "https://api.football-data.org/v1/teams/402",
    players: "https://api.football-data.org/v1/teams/402/players"

  },
  {
    team_name: "Birmingham City",
    crest_url: "https://upload.wikimedia.org/wikipedia/en/6/68/Birmingham_City_FC_logo.svg",
    league: english_league,
    fixtures: "https://api.football-data.org/v1/teams/332/fixtures",
    self: "https://api.football-data.org/v1/teams/332",
    players: "https://api.football-data.org/v1/teams/332/players"
  },
  {
    team_name: "Cardiff City FC",
    crest_url: "https://upload.wikimedia.org/wikipedia/de/c/c6/Cardiff_City_Logo.png",
    league: english_league,
    fixtures: "https://api.football-data.org/v1/teams/387/fixtures",
    self: "https://api.football-data.org/v1/teams/387",
    players: "https://api.football-data.org/v1/teams/387/players"
  },
  {
    team_name: "Cardiff City FC",
    crest_url: "https://upload.wikimedia.org/wikipedia/de/c/c6/Cardiff_City_Logo.png",
    league: english_league,
    fixtures: "https://api.football-data.org/v1/teams/715/fixtures",
    self: "https://api.football-data.org/v1/teams/715",
    players: "https://api.football-data.org/v1/teams/715/players"
  },
  {
    team_name: "Bristol City",
    crest_url: "",
    league: english_league,
    fixtures: "https://api.football-data.org/v1/teams/387/fixtures",
    self: "https://api.football-data.org/v1/teams/387",
    players: "https://api.football-data.org/v1/teams/387/players"
  },
  {
    team_name: "Wigan Athletic FC",
    crest_url: "https://upload.wikimedia.org/wikipedia/en/4/43/Wigan_Athletic.svg",
    league: english_league,
    fixtures: "https://api.football-data.org/v1/teams/75/fixtures",
    self: "https://api.football-data.org/v1/teams/75",
    players: "https://api.football-data.org/v1/teams/75/players"
  },
  {
    team_name: "Brighton & Hove Albion",
    crest_url: "https://upload.wikimedia.org/wikipedia/en/f/fd/Brighton_&_Hove_Albion_logo.svg",
    league: english_league,
    fixtures: "https://api.football-data.org/v1/teams/397/fixtures",
    self: "https://api.football-data.org/v1/teams/397",
    players: "https://api.football-data.org/v1/teams/397/players"
  },
  {
    team_name: "Queens Park Rangers",
    crest_url: "https://upload.wikimedia.org/wikipedia/de/d/d4/Queens_Park_Rangers.svg",
    league: english_league,
    fixtures: "https://api.football-data.org/v1/teams/69/fixtures",
    self: "https://api.football-data.org/v1/teams/69",
    players: "https://api.football-data.org/v1/teams/69/players"
  },
  {
    team_name: "Leeds United",
    crest_url: "",
    league: english_league,
    fixtures: "https://api.football-data.org/v1/teams/341/fixtures",
    self: "https://api.football-data.org/v1/teams/341",
    players: "https://api.football-data.org/v1/teams/341/players"
  },
  {
    team_name: "Sheffield Wednesday",
    crest_url: "https://upload.wikimedia.org/wikipedia/en/8/86/Sheffield_Wednesday_crest_from_2016.jpg",
    league: english_league,
    fixtures: "https://api.football-data.org/v1/teams/345/fixtures",
    self: "https://api.football-data.org/v1/teams/345",
    players: "https://api.football-data.org/v1/teams/345/players"
  },
  {
    team_name: "Aston Villa FC",
    crest_url: "https://upload.wikimedia.org/wikipedia/de/9/9f/Aston_Villa_logo.svg",
    league: english_league,
    fixtures: "https://api.football-data.org/v1/teams/58/fixtures",
    self: "https://api.football-data.org/v1/teams/58",
    players: "https://api.football-data.org/v1/teams/58/players"

  },
  {
    team_name: "Fulham FC",
    crest_url:"https://upload.wikimedia.org/wikipedia/de/a/a8/Fulham_fc.svg",
    league: english_league,
    fixtures: "https://api.football-data.org/v1/teams/63/fixtures ",
    self: "https://api.football-data.org/v1/teams/63 ",
    players: "https://api.football-data.org/v1/teams/63/players "
  },
  {
    team_name: "Newcastle United FC",
    crest_url:"https://upload.wikimedia.org/wikipedia/de/5/56/Newcastle_United_Logo.svg",
    league: english_league,
    fixtures: "https://api.football-data.org/v1/teams/67/fixtures ",
    self: " https://api.football-data.org/v1/teams/67",
    players: "https://api.football-data.org/v1/teams/67/players "
  },
  {
    team_name: "Blackburn Rovers FC",
    crest_url:" ",
    league: english_league,
    fixtures: " https://api.football-data.org/v1/teams/59/fixtures",
    self: " https://api.football-data.org/v1/teams/59",
    players: " https://api.football-data.org/v1/teams/59/players"
  },
  {
    team_name: "Norwich City FC",
    crest_url:"https://upload.wikimedia.org/wikipedia/de/8/8c/Norwich_City.svg",
    league: english_league,
    fixtures: " https://api.football-data.org/v1/teams/68/fixtures",
    self: "https://api.football-data.org/v1/teams/68 ",
    players: "https://api.football-data.org/v1/teams/68/players "
  },
  {
    team_name: "Rotherham United",
    crest_url:"https://upload.wikimedia.org/wikipedia/en/c/c0/Rotherham_United_FC.svg",
    league: english_league,
    fixtures: "https://api.football-data.org/v1/teams/385/fixtures ",
    self: "https://api.football-data.org/v1/teams/385 ",
    players: "https://api.football-data.org/v1/teams/385/players "
  },
  {
    team_name: "Wolverhampton Wanderers FC",
    crest_url:"",
    league: english_league,
    fixtures: "https://api.football-data.org/v1/teams/76/fixtures ",
    self: "https://api.football-data.org/v1/teams/76 ",
    players: "https://api.football-data.org/v1/teams/76/players "
  },
  {
    team_name: "Reading",
    crest_url:"",
    league: english_league,
    fixtures: " https://api.football-data.org/v1/teams/355/fixtures",
    self: "https://api.football-data.org/v1/teams/355 ",
    players: " https://api.football-data.org/v1/teams/355/players"
  },
  {
    team_name: "Preston North End",
    crest_url:"",
    league: english_league,
    fixtures: "https://api.football-data.org/v1/teams/1081/fixtures ",
    self: "https://api.football-data.org/v1/teams/1081 ",
    players: "https://api.football-data.org/v1/teams/1081/players "
  },
  {
    team_name: "Nottingham Forest",
    crest_url:"https://upload.wikimedia.org/wikipedia/en/d/d2/Nottingham_Forest_logo.svg",
    league: english_league,
    fixtures: "https://api.football-data.org/v1/teams/351/fixtures",
    self: "https://api.football-data.org/v1/teams/351 ",
    players: "https://api.football-data.org/v1/teams/351/players"
  },
  {
    team_name: "Nottingham Forest",
    crest_url:"https://upload.wikimedia.org/wikipedia/en/d/d2/Nottingham_Forest_logo.svg",
    league: english_league,
    fixtures: " https://api.football-data.org/v1/teams/351/fixtures",
    self: "https://api.football-data.org/v1/teams/351 ",
    players: "https://api.football-data.org/v1/teams/351/players "
  },
  {
    team_name: "Burton Albion FC",
    crest_url:"https://upload.wikimedia.org/wikipedia/en/thumb/5/53/Burton_Albion_FC_logo.svg/847px-Burton_Albion_FC_logo.svg.png",
    league: english_league,
    fixtures: "https://api.football-data.org/v1/teams/1072/fixtures ",
    self: "https://api.football-data.org/v1/teams/1072 ",
    players: " https://api.football-data.org/v1/teams/1072/players"
  },
  {
    team_name: "Ipswich Town",
    crest_url:"https://upload.wikimedia.org/wikipedia/en/4/43/Ipswich_Town.svg",
    league: english_league,
    fixtures: " https://api.football-data.org/v1/teams/349/fixtures",
    self: "https://api.football-data.org/v1/teams/349 ",
    players: "https://api.football-data.org/v1/teams/349/players "
  }
])
