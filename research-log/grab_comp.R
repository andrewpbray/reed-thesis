filenames <- list.files()
library(jsonlite)
library(ggplot2)
pages <- list()
for(i in seq_along(filenames)) {
  mydata <- fromJSON(filenames[i], simplifyDataFrame = TRUE)
  pages[[i]] <- mydata
}

n <- length(pages)
roster <- c("Abomasnow", 
            "Absol", 
            "Accelgor",
            "Aerodactyl",
            "Aggron",
            "Alakazam",
            "Alomomola",
            "Altaria",
            "Ambipom",
            "Amoonguss",
            "Ampharos",
            "Arbok",
            "Arcanine",
            "Archeops",
            "Ariados",
            "Armaldo",
            "Aromatisse",
            "Articuno",
            "Audino",
            "Aurorus",
            "Avalugg",
            "Azelf",
            "Azumarill",
            "Banette",
            "Barbaracle",
            "Basculin",
            "Bastiodon",
            "Beartic",
            "Beautifly",
            "Beedrill",
            "Beheeyem",
            "Bellossom",
            "Bibarel",
            "Bisharp",
            "Blastoise",
            "Blissey",
            "Bouffalant",
            "Braviary",
            "Breloom",
            "Bronzong",
            "Butterfree",
            "Cacturne",
            "Camerupt",
            "Carbink",
            "Carnivine",
            "Carracosta",
            "Castform",
            "Celebi",
            "Chandelure",
            "Chansey",
            "Charizard",
            "Chatot",
            "Cherrim",
            "Chesnaught",
            "Chimecho",
            "Cinccino",
            "Clawitzer",
            "Claydol",
            "Clefable",
            "Clefairy",
            "Cloyster",
            "Cobalion",
            "Cofagrigus",
            "Combusken",
            "Conkeldurr",
            "Corsola",
            "Cradily",
            "Crawdaunt",
            "Cresselia",
            "Crobat",
            "Crustle",
            "Cryogonal",
            "Darmanitan",
            "Dedenne",
            "Delcatty",
            "Delibird",
            "Delphox",
            "Dewgong",
            "Diancie",
            "Diggersby",
            "Ditto",
            "Dodrio",
            "Donphan",
            "Doublade",
            "Dragalge",
            "Dragonair",
            "Dragonite",
            "Drapion",
            "Drifblim",
            "Druddigon",
            "Dugtrio",
            "Dunsparce",
            "Duosion",
            "Durant",
            "Dusclops",
            "Dusknoir",
            "Dustox",
            "Eelektross",
            "Electivire",
            "Electrode",
            "Emboar",
            "Emolga",
            "Empoleon",
            "Entei",
            "Escavalier",
            "Espeon",
            "Excadrill",
            "Exeggutor",
            "Exploud",
            "Farfetch'd",
            "Fearow",
            "Feraligatr",
            "Ferroseed",
            "Ferrothorn",
            "Flareon",
            "Fletchinder",
            "Floatzel",
            "Florges",
            "Flygon",
            "Forretress",
            "Fraxure",
            "Froslass",
            "Furfrou",
            "Furret",
            "Gabite",
            "Gallade",
            "Galvantula",
            "Garbodor",
            "Garchomp",
            "Gardevoir",
            "Gastrodon",
            "Gengar",
            "Gigalith",
            "Girafarig",
            "Glaceon",
            "Glalie",
            "Gligar",
            "Gliscor",
            "Gogoat",
            "Golbat",
            "Golduck",
            "Golem",
            "Golurk",
            "Goodra",
            "Gorebyss",
            "Gothitelle",
            "Gourgeist",
            "Granbull",
            "Grumpig",
            "Gurdurr",
            "Gyarados",
            "Hariyama",
            "Haunter",
            "Hawlucha",
            "Haxorus",
            "Heatmor",
            "Heatran",
            "Heliolisk",
            "Heracross",
            "Hippowdon",
            "Hitmonchan",
            "Hitmonlee",
            "Hitmontop",
            "Honchkrow",
            "Hoopa",
            "Hoopa-U",
            "Houndoom",
            "Huntail",
            "Hydreigon",
            "Hypno",
            "Illumise",
            "Infernape",
            "Jellicent",
            "Jirachi",
            "Jolteon",
            "Jumpluff",
            "Jynx",
            "Kabutops",
            "Kadabra",
            "Kangaskhan",
            "Kecleon",
            "Keldeo",
            "Kingdra",
            "Kingler",
            "Klang",
            "Klefki",
            "Klinklang",
            "Kricketune",
            "Krokorok",
            "Krookodile",
            "Kyurem",
            "Kyurem-B",
            "Landorus-T",
            "Lanturn",
            "Lapras",
            "Latias",
            "Latios",
            "Leafeon",
            "Leavanny",
            "Ledian",
            "Lickilicky",
            "Liepard",
            "Lilligant",
            "Linoone",
            "Lopunny",
            "Lucario",
            "Ludicolo",
            "Lumineon",
            "Lunatone",
            "Luvdisc",
            "Luxray",
            "Machamp",
            "Machoke",
            "Magcargo",
            "Magmortar",
            "Magneton",
            "Magnezone",
            "Malamar",
            "Mamoswine",
            "Manaphy",
            "Mandibuzz",
            "Manectric",
            "Mantine",
            "Maractus",
            "Marowak",
            "Masquerain",
            "Mawile",
            "Medicham",
            "Meganium",
            "Meloetta",
            "Meowstic",
            "Mesprit",
            "Metagross",
            "Metang",
            "Mew",
            "Mienshao",
            "Mightyena",
            "Milotic",
            "Miltank",
            "Minun",
            "Misdreavus",
            "Mismagius",
            "Moltres",
            "Monferno",
            "Mothim",
            "Mr. Mime",
            "Muk",
            "Murkrow",
            "Musharna",
            "Nidoking",
            "Nidoqueen",
            "Ninetales",
            "Ninjask",
            "Noctowl",
            "Noivern",
            "Octillery",
            "Omastar",
            "Pachirisu",
            "Pangoro",
            "Parasect",
            "Pawniard",
            "Pelipper",
            "Persian",
            "Phione",
            "Pidgeot",
            "Piloswine",
            "Pinsir",
            "Plusle",
            "Politoed",
            "Poliwrath",
            "Porygon-Z",
            "Porygon2",
            "Primeape",
            "Prinplup",
            "Probopass",
            "Purugly",
            "Pyroar",
            "Quagsire",
            "Quilladin",
            "Qwilfish",
            "Raichu",
            "Raikou",
            "Rampardos",
            "Rapidash",
            "Raticate",
            "Regice",
            "Regigigas",
            "Regirock",
            "Registeel",
            "Relicanth",
            "Reuniclus",
            "Rhydon",
            "Rhyperior",
            "Roselia",
            "Roserade",
            "Rotom",
            "Rotom-C",
            "Rotom-F",
            "Rotom-H",
            "Rotom-S",
            "Rotom-W",
            "Sableye",
            "Salamence",
            "Samurott",
            "Sandslash",
            "Sawk",
            "Sawsbuck",
            "Sceptile",
            "Scizor",
            "Scolipede",
            "Scrafty",
            "Scyther",
            "Seaking",
            "Seismitoad",
            "Serperior",
            "Servine",
            "Seviper",
            "Sharpedo",
            "Shaymin",
            "Shedinja",
            "Shiftry",
            "Shuckle",
            "Sigilyph",
            "Simipour",
            "Simisage",
            "Simisear",
            "Skarmory",
            "Skuntank",
            "Slaking",
            "Slowbro",
            "Slowking",
            "Slurpuff",
            "Smeargle",
            "Sneasel",
            "Snorlax",
            "Solrock",
            "Spinda",
            "Spiritomb",
            "Stantler",
            "Staraptor",
            "Starmie",
            "Steelix",
            "Stoutland",
            "Stunfisk",
            "Sudowoodo",
            "Suicune",
            "Sunflora",
            "Swalot",
            "Swampert",
            "Swanna",
            "Swellow",
            "Swoobat",
            "Sylveon",
            "Talonflame",
            "Tangela",
            "Tangrowth",
            "Tauros",
            "Tentacruel",
            "Terrakion",
            "Throh",
            "Thundurus",
            "Thundurus-T",
            "Togekiss",
            "Togetic",
            "Torkoal",
            "Tornadus",
            "Tornadus-T",
            "Torterra",
            "Toxicroak",
            "Trevenant",
            "Tropius",
            "Typhlosion",
            "Tyranitar",
            "Tyrantrum",
            "Umbreon",
            "Unfezant",
            "Unown",
            "Ursaring",
            "Uxie",
            "Vanilluxe",
            "Vaporeon",
            "Venomoth",
            "Venusaur",
            "Vespiquen",
            "Vibrava",
            "Victini",
            "Victreebel",
            "Vigoroth",
            "Vileplume",
            "Virizion",
            "Vivillon",
            "Volbeat",
            "Volcarona",
            "Vullaby",
            "Wailord",
            "Walrein",
            "Wartortle",
            "Watchog",
            "Weavile",
            "Weezing",
            "Whimsicott",
            "Whiscash",
            "Wigglytuff",
            "Wobbuffet",
            "Wormadam",
            "Wormadam-Sandy",
            "Wormadam-Trash",
            "Xatu",
            "Yanmega",
            "Zangoose",
            "Zapdos",
            "Zebstrika",
            "Zoroark",
            "Zweilous",
            "Zygarde")

nroster <- toupper(roster)
p1teamfunc <- function(battlelog) {
  if((battlelog$endType) == "draw") {
    teamfunc1 <- c(NA, NA, NA, NA, NA, NA)
  }
  if(length(battlelog$p1team$species) < 6) {
    teamfunc1 <- c(NA, NA, NA, NA, NA, NA)
  }
  if(length(battlelog$p2team$species) < 6) {
    teamfunc1 <- c(NA, NA, NA, NA, NA, NA)
  }
  else {
    teamfunc1 <- battlelog$p1team$species }
  teamfunc1 
}
p2teamfunc <- function(battlelog) {
  if((battlelog$endType) == "draw") {
    teamfunc2 <- c(NA, NA, NA, NA, NA, NA)
  }
  if(length(battlelog$p1team$species) < 6) {
    teamfunc2 <- c(NA, NA, NA, NA, NA, NA)
  }
  if(length(battlelog$p2team$species) < 6) {
    teamfunc2 <- c(NA, NA, NA, NA, NA, NA)
  }
  else {
    teamfunc2 <- battlelog$p1team$species }
  teamfunc2 
}

p1teamrost <- function(battlelog) {
  if((battlelog$endType) == "draw") {
    teamfunc1 <- c(NA, NA, NA, NA, NA, NA)
    p1roster <- nroster %in% toupper(teamfunc1)
    return(p1roster)
  }
  if(length(battlelog$p1team$species) < 6) {
    teamfunc1 <- c(NA, NA, NA, NA, NA, NA)
    p1roster <- nroster %in% toupper(teamfunc1)
    return(p1roster)
  }
  if(length(battlelog$p2team$species) < 6) {
    teamfunc1 <- c(NA, NA, NA, NA, NA, NA)
    p1roster <- nroster %in% toupper(teamfunc1)
    return(p1roster)
  }
  else {
    p1roster <- nroster %in% toupper(battlelog$p1team$species)
  }
  p1roster
}

p2teamrost <- function(battlelog) {
  if((battlelog$endType) == "draw") {
    teamfunc2 <- c(NA, NA, NA, NA, NA, NA)
    p2roster <- nroster %in% toupper(teamfunc2)
    return(p2roster)
  }
  if(length(battlelog$p2team$species) < 6) {
    teamfunc2 <- c(NA, NA, NA, NA, NA, NA)
    p2roster <- nroster %in% toupper(teamfunc2)
    return(p2roster)
  }
  if(length(battlelog$p1team$species) < 6) {
    teamfunc1 <- c(NA, NA, NA, NA, NA, NA)
    p2roster <- nroster %in% toupper(teamfunc2)
    return(p2roster)
  }
  else {
    p2roster <- nroster %in% toupper(battlelog$p2team$species)
  }
  p2roster
}

battleroster <- function(battlelog) {
  
  
  

  roster
}

# player=c(1,2),

grab_rost <- function(battlelog) {
  data.frame(
             roster=(rbind(p1teamrost(battlelog), p2teamrost(battlelog))))
             } 

grab_rost(pages[[1]])

m1data <- matrix(nrow=2*n, ncol=413)
for(i in seq(1, n, by=2)) {m1data[i] <- rbind(grab_rost(pages[[i]])[1,], grab_rost(pages[[i]])[2,])}

for(k in 1:n){ for(j in 1:413) { for(i in 1:(2*n)) { m1data[i,j] <- grab_rost(pages[[k]])[i,j] } } } 

for(l in 1:(n*2)) { for(j in 1:413) { for(i in 1:n) { for(k in 1:2) {  m1data[l,j] <- grab_rost(pages[[i]])[k,j] } } } }  

for(j in 1:413) { for(i in seq(1, n, by=2)) { m1data[i,j] <- grab_rost(pages[[i]])[i,j] } } 

turn_lengths <- rep(0, length(pages))
for(i in seq_along(pages)) {
  turn_lengths[i] <- pages[[i]]$turns
}

playerout <- function(battlelog) {
  if((battlelog$endType) == "draw") {
    playout <- NA} 
  if((battlelog$p1rating$elo > battlelog$p1rating$oldelo) == TRUE) {
    playout <- "p1"}
  else {
    playout <- "p2"}
  playout
}

playerout(pages[[i]])
winlose <- rep(NA, length(pages)) 
for(i in 1:length(pages)) {winlose[i] <- playerout(pages[[i]])}

matchavg <- function(battlelog){
  if((battlelog$endType) == "draw") {
    matchym <- NA
    } 
  else {
    matchym <- ((as.numeric(pages[[i]]$p1rating$oldelo))+(as.numeric(pages[[i]]$p2rating$oldelo)))/2 
  }
  matchym
} 
# regular switcher
swcounter1 <- function(battlelog) {
  if(battlelog$turns == 0) {
    swcount1 <- NA 
    return(swcount1)
  }
  if(battlelog$endType == "draw") {
    swcount1 <- NA
  }
  else{
    swcount1 <- (length(grep("switch[|]p1a", battlelog$log)))  
  }
  swcount1
}

swcounter2 <- function(battlelog) {
  if(battlelog$turns == 0) {
    swcount2 <- NA 
    return(swcount2)
  }
  if(battlelog$endType == "draw") {
    swcount2 <- NA
  }
  else{
    swcount2 <- (length(grep("switch[|]p2a", battlelog$log)))  
  }
  swcount2
}

## ranking and group function
p1rank <- function(battlelog) {
  if((battlelog$endType) == "draw") {
    p1match <- NA
  }
  else {
    p1match <- (as.numeric(pages[[i]]$p1rating$oldelo)) 
  }
  p1match
}

p2rank <- function(battlelog) {
  if((battlelog$endType) == "draw") {
    p2match <- NA
  }
  else {
    p2match <- (as.numeric(pages[[i]]$p2rating$oldelo)) 
  }
  p2match
}




p1itemfunc <- function(battlelog) {
  if((battlelog$endType) == "draw") {
    itfunc1 <- c(NA, NA, NA, NA, NA, NA)
  }
  if(length(battlelog$p1team$species) < 6) {
    itfunc1 <- c(NA, NA, NA, NA, NA, NA)
  }
  if(length(battlelog$p2team$species) < 6) {
    itfunc1 <- c(NA, NA, NA, NA, NA, NA)
  }
  else {
    itfunc1 <- battlelog$p1team$item }
  itfunc1 
}

p2itemfunc <- function(battlelog) {
  if((battlelog$endType) == "draw") {
    itfunc2 <- c(NA, NA, NA, NA, NA, NA)
  }
  if(length(battlelog$p1team$species) < 6) {
    itfunc2 <- c(NA, NA, NA, NA, NA, NA)
  }
  if(length(battlelog$p2team$species) < 6) {
    itfunc2 <- c(NA, NA, NA, NA, NA, NA)
  }
  else {
    itfunc2 <- battlelog$p1team$item }
  itfunc2 
}

p1func <- function(battlelog) {
  if((battlelog$endType) == "draw") {
    p1out <- NA
    }
  if((battlelog$p1rating$elo > battlelog$p1rating$oldelo) == TRUE) {
    p1out <- 1
    }
  else {
    p1out <- 0
    }
  p1out
}

p2func <- function(battlelog) {
  if((battlelog$endType) == "draw") {
    p2out <- NA
    }
  if((battlelog$p2rating$elo > battlelog$p2rating$oldelo) == TRUE) {
    p2out <- 1
    }
  else {
    p2out <- 0
    }
  p2out
}
# Pokémon Check 
# includes p1 & p2 
p1ninjaskr <- function(battlelog) {
  if((any(grep("ninjask",battlelog$p1team$species))) == TRUE) {
    p1jask <- 1 
  }
  else {
    p1jask <- 0 
  }
  p1jask
}

p2ninjaskr <- function(battlelog) {
  if((any(grep("ninjask",battlelog$p2team$species))) == TRUE) {
    p2jask <- 1 
  }
  else {
    p2jask <- 0 
  }
  p2jask
}
# Pokémon w/Move check 
p1toxspikesdrap <- function(battlelog) {
  if((battlelog$endType) == "draw") {
    p1draptoxspikes <- NA
  }
  if((any(grep("Drapion[|]Toxic Spikes[|]p1a", battlelog$log))) == FALSE) {
    p1draptoxspikes <- 0
  }
  if((any(grep("Drapion[|]Toxic Spikes[|]p1a", battlelog$log))) == TRUE) {
    p1draptoxspikes <- length((grep("Drapion[|]Toxic Spikes[|]p1a", battlelog$log)))
  }
  p1draptoxspikes
}

p2toxspikesdrap <- function(battlelog) {
  if((battlelog$endType) == "draw") {
    p2draptoxspikes <- NA
  }
  if((any(grep("Drapion[|]Toxic Spikes[|]p2a", battlelog$log))) == FALSE) {
    p2draptoxspikes <- 0
  }
  if((any(grep("Drapion[|]Toxic Spikes[|]p2a", battlelog$log))) == TRUE) {
    p2draptoxspikes <- length((grep("Drapion[|]Toxic Spikes[|]p2a", battlelog$log)))
  }
  p2draptoxspikes
}
# Item Check 
p1jaskorb <- function(battlelog){
  if(((any(grep("ninjask", battlelog$p1team$species[1], -i))) == TRUE) & ((any(grep("lifeorb", battlelog$p1team$item[1], -i))) == TRUE)){
    p1jaskitb <- 1 
    return(p1jaskitb)
  }
  if(((any(grep("ninjask", battlelog$p1team$species[2], -i))) == TRUE) & ((any(grep("lifeorb", battlelog$p1team$item[2], -i))) == TRUE)){
    p1jaskitb <- 1 
    return(p1jaskitb)
  }
  if(((any(grep("ninjask", battlelog$p1team$species[3], -i))) == TRUE) & ((any(grep("lifeorb", battlelog$p1team$item[3], -i))) == TRUE)){
    p1jaskitb <- 1 
    return(p1jaskitb)
  }
  if(((any(grep("ninjask", battlelog$p1team$species[4], -i))) == TRUE) & ((any(grep("lifeorb", battlelog$p1team$item[4], -i))) == TRUE)){
    p1jaskitb <- 1 
    return(p1jaskitb)
  }
  if(((any(grep("ninjask", battlelog$p1team$species[5], -i))) == TRUE) & ((any(grep("lifeorb", battlelog$p1team$item[5], -i))) == TRUE)){
    p1jaskitb <- 1 
    return(p1jaskitb)
  }
  if(((any(grep("ninjask", battlelog$p1team$species[6], -i))) == TRUE) & ((any(grep("lifeorb", battlelog$p1team$item[6], -i))) == TRUE)){
    p1jaskitb <- 1 
    return(p1jaskitb)
  }
  else {
    p1jaskitb <- 0
  }
  p1jaskitb
} 
# comp grab
grab_comp <- function(battlelog) {
  data.frame(pokemon=rep(c(p1teamfunc(battlelog),p2teamfunc(battlelog))), 
             item=rep(c(p1itemfunc(battlelog),p2itemfunc(battlelog))), 
             player=rep(1:2,each=6),
             outcome=rep(c(p1func(battlelog), p2func(battlelog)), each=6),
             elo=rep(matchavg(battlelog), each=12)
             )
  }
grab_comp(pages[[i]])
# current working grabber
grab_comp1 <- function(battlelog) {
  data.frame(rank=rep(c(p1rank(battlelog),p2rank(battlelog))),
             player=c(1,2),
             outcome=(c(p1func(battlelog), p2func(battlelog))),
             switches=(c(swcounter1(battlelog),swcounter2(battlelog)))
             )} 
  
grab_comp1(pages[[i]])  

# Works for any one page; needs to be iterated across pages
compstat <- rep(0, (12*length(pages))) 
for(i in 1:(12*length(pages))) compstat[i] <- grab_comp(pages[[i]])
  for(j in 1:length(pages))  
      { compstat[j] <- grab_comp(pages[[i]])}
      }





winning_move <- function(move) { 
  for(i in c("p1","p2")){ if(length(grep(move, turn1)) > 0 ) { # did player win?
    } else {next} 
    # isolate turn 1
    # 
  }
  # did p1 use move
  # did p2 use move
  # if no & no exit
  # if yes, did p1 win?
}


# want
# winning_move()
# >true