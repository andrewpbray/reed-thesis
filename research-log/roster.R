filenames <- list.files()
library(jsonlite)
library(ggplot2)
pages <- list()
for(i in seq_along(filenames)) {
  mydata <- fromJSON(filenames[i], simplifyDataFrame = TRUE)
  pages[[i]] <- mydata
}

n <- length(pages)

megaitems <- c("Abomasite",
"Absolite",
"Aerodactylite",
"Aggronite",
"Alakazite",
"Altarianite",
"Ampharosite",
"Audinite",
"Banettite",
"Beedrillite",
"Blastoisinite",
"Cameruptite",
"Charizarditex",
"Charizarditey",
"Diancite",
"Galladite",
"Garchompite",
"Gardevoirite",
"Glalitite",
"Gyaradosite",
"Heracronite",
"Houndoominite",
"Latiasite",
"Latiosite",
"Lopunnite",
"Manectite",
"Medichamite",
"Metagrossite",
"Pidgeotite",
"Pinsirite",
"Sablenite",
"Sceptilite",
"Scizorite",
"Sharpedonite",
"Slowbronite",
"Steelixite",
"Swampertite",
"Tyranitarite",
"Venusaurite")
megarost <- c("Abomasnow",
"Absol",
"Aerodactyl",
"Aggron",
"Alakazam",
"Altaria",
"Ampharos",
"Audino",
"Banette",
"Beedrill",
"Blastoise",
"Camerupt",
"Charizard", 
"Diancie",
"Gallade",
"Garchomp",
"Gardevoir",
"Glalie",
"Gyarados",
"Heracross",
"Houndoom",
"Latias",
"Latios",
"Lopunny",
"Manectric",
"Medicham",
"Metagross",
"Pidgeot",
"Pinsir",
"Sableye",
"Sceptile",
"Scizor",
"Sharpedo",
"Slowbro",
"Steelix",
"Swampert",
"Tyranitar",
"Venusaur")
nferost <- c("Chansey",
             "Clefairy",
             "Combusken",
             "Doublade",
             "Dragonair",
             "Duosion",
             "Dusclops",
             "Ferroseed",
             "Fletchinder",
             "Fraxure",
             "Gabite",
             "Gligar",
             "Golbat",
             "Gurdurr",
             "Haunter",
             "Kadabra",
             "Klang",
             "Krokorok",
             "Machoke",
             "Magneton",
             "Metang",
             "Misdreavus",
             "Monferno",
             "Murkrow",
             "Pawniard",
             "Piloswine",
             "Porygon2",
             "Prinplup",
             "Quilladin",
             "Rhydon",
             "Roselia",
             "Scyther",
             "Servine",
             "Sneasel",
             "Tangela",
             "Togetic",
             "Vibrava",
             "Vigoroth",
             "Vullaby",
             "Wartortle",
             "Zweilous")

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
nferoster <- toupper(nferost)
nmegarost <- toupper(megarost) 
nmegaitems <- toupper(megaitems) 

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

p1eviolite <- matrix(nrow=1, ncol=42)

# works for 1 Pokémon, need 42; 84 total for p1 and p2 
n1ferfunc <- function(battlelog) {
  if((battlelog$endType) == "draw") {
  p1ev <- c(rep(NA,41)) }
  else { 
  p1ev <- (nferoster %in% toupper(battlelog$p1team$species)) }  
  p1ev
}

n2ferfunc <- function(battlelog) {
  if((battlelog$endType) == "draw") {
    p1ev <- c(rep(NA,41)) }
  else { 
    p1ev <- (nferoster %in% toupper(battlelog$p2team$species)) }  
  p1ev
}

f1itemoutcome <- function(battlelog) {
  if( sum((nferoster %in% toupper(battlelog$p1team$species)), na.rm=TRUE) < 1) {
    p1itemoutcome <- NA
    return(p1itemoutcome)}
  if ((sum((nferoster %in% toupper(battlelog$p1team$species)), na.rm=TRUE) > 0) & ((any(grep("eviolite", battlelog$p1team$item, -i))) == TRUE)){
    p1itemoutcome <- 1
    return(p1itemoutcome)}
  else {
    p1itemoutcome <- 0}
  p1itemoutcome
}

f2itemoutcome <- function(battlelog) {
  if( sum((nferoster %in% toupper(battlelog$p2team$species)), na.rm=TRUE) < 1) {
    p2itemoutcome <- NA
    return(p2itemoutcome)}
  if ((sum((nferoster %in% toupper(battlelog$p2team$species)), na.rm=TRUE) > 0) & ((any(grep("eviolite", battlelog$p1team$item, -i))) == TRUE)){
    p2itemoutcome <- 1
    return(p2itemoutcome)}
  else {
    p2itemoutcome <- 0}
  p2itemoutcome
}
# Mega code
p1mega <- function(battlelog){
  if((battlelog$endType) == "draw") {
  p1megaitems<- c(rep(NA,39)) }
  else { 
  p1megaitems <- (nmegaitems %in% toupper(battlelog$p1team$item)) }  
  p1megaitems
}


p2mega <- function(battlelog){
  if((battlelog$endType) == "draw") {
  p2megaitems<- c(rep(NA,39)) }
  else { 
  p2megaitems <- (nmegaitems %in% toupper(battlelog$p2team$item)) }  
  p2megaitems
}


p1nferost <- function(battlelog) {
  if((battlelog$endType) == "draw") {
    teamfunc1 <- c(NA, NA, NA, NA, NA, NA)
    p1nfe <- nferoster %in% toupper(teamfunc1)
    return(p1nfe)
  }
  if(length(battlelog$p1team$species) < 6) {
    teamfunc1 <- c(NA, NA, NA, NA, NA, NA)
    p1nfe <- nferoster %in% toupper(teamfunc1)
    return(p1nfe)
  }
  if(length(battlelog$p2team$species) < 6) {
    teamfunc1 <- c(NA, NA, NA, NA, NA, NA)
    p1nfe <- nferoster %in% toupper(teamfunc1)
    return(p1nfe)
  }
  else {
    p1nfe <- nferoster %in% toupper(battlelog$p1team$species)
  }
  p1nfe
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

grab_mega <- function(battlelog) {
  data.frame(
    megapoke= rbind(p1mega(battlelog),p2mega(battlelog))
    )
}

grab_mega(pages[[1]]) 


grab_nfe <- function(battlelog) {
  data.frame(
    notfullyevolve= rbind(f1itemoutcome(battlelog), f2itemoutcome(battlelog))
  )
}
grab_nfe(pages[[1]])

grab_rost <- function(battlelog) {
  data.frame(
    roster=(rbind(p1teamrost(battlelog), p2teamrost(battlelog))))
} 

grab_rost(pages[[1]])

m1data <- matrix(nrow=2*n, ncol=413)

# code doesn't work, gives error replacement length 
for(i in seq(1, n, by=2)) {m1data[i] <- rbind(grab_rost(pages[[i]])[1,], grab_rost(pages[[i]])[2,])}

# code works, but only includes rows 1 and 2
for(k in 1:n) { for(j in 1:413) { for(i in seq(1,(2*n))) { m1data[i,j] <- grab_rost(pages[[k]])[i,j] } } } 

# code works, but repeats the entries for one player's roster
for(l in 1:(n*2)) { for(j in 1:413) { for(i in 1:n) { for(k in 1:2) {  m1data[l,j] <- grab_rost(pages[[i]])[k,j] } } } }  

# code works, but repeats the entries for one player's roster
for(j in 1:413) { for(i in 1:n) { for(k in 1:2) {  m1data[(2*i)-1:(2*i)] <- grab_rost(pages[[i]])[k,j] } } } 

# code works, but only gives the correct roster for the first 12 entries; the remaining entries are all equal (They should not be)
# best version so far
for(j in 1:413) { for(i in 1:n) { for(k in 1:2) {m1data[i,j] <- grab_rost(pages[[i]])[k,j] } } } 



