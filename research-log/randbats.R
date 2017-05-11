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
# count = 42
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
# count= 415 
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
# overall move counter per/player
strock1countr <- function(battlelog){
  if((any(grep("Stealth Rock[|]p2a", battlelog$log,-i))) == TRUE){
    strock1count <- sum((any(grep("Stealth Rock[|]p2a", battlelog$log,-i))), na.rm=TRUE) 
    return(strock1count)}
  else{
    strock1count <- 0 
  }
  strock1count
}

strock2countr <- function(battlelog){
  if((any(grep("Stealth Rock[|]p1a", battlelog$log,-i))) == TRUE){
    strock2count <- sum((any(grep("Stealth Rock[|]p1a", battlelog$log,-i))), na.rm=TRUE) 
    return(strock2count)}
  else{
    strock2count <- 0 
  }
  strock2count
}

spikecountr1 <- function(battlelog){
  if((any(grep("Spikes[|]p2a", battlelog$log,-i))) == TRUE){
    spikecount1 <- sum((any(grep("Spikes[|]p2a", battlelog$log,-i))), na.rm=TRUE) 
    return(spikecount1)}
  else{
    spikecount1 <- 0 
  }
  spikecount1
}

spikecountr2 <- function(battlelog){
  if((any(grep("Spikes[|]p1a", battlelog$log,-i))) == TRUE){
    spikecount2 <- sum((any(grep("Spikes[|]p1a", battlelog$log,-i))), na.rm=TRUE) 
    return(spikecount2)}
  else{
    spikecount2 <- 0 
  }
  spikecount2
}

toxspikecountr1 <- function(battlelog){
  if((any(grep("Toxic Spikes[|]p2a", battlelog$log,-i))) == TRUE){
    toxspikecount1 <- sum((any(grep("Toxic Spikes[|]p2a", battlelog$log,-i))), na.rm=TRUE) 
    return(toxspikecount1)}
  else{
    toxspikecount1 <- 0 
  }
  toxspikecount1
}

toxspikecountr2 <- function(battlelog){
  if((any(grep("Toxic Spikes[|]p1a", battlelog$log,-i))) == TRUE){
    toxspikecount2 <- sum((any(grep("Toxic Spikes[|]p1a", battlelog$log,-i))), na.rm=TRUE) 
    return(toxspikecount2)}
  else{
    toxspikecount2 <- 0 
  }
  toxspikecount2
}

sticky1count <- function(battlelog){
  if((any(grep("Sticky Web[|]p2a", battlelog$log,-i))) == TRUE){
    st1count <- sum((any(grep("Sticky Web[|]p2a", battlelog$log,-i))), na.rm=TRUE) 
    return(st1count)}
  else{
    st1count <- 0 
  }
  st1count
}

sticky2count <- function(battlelog){
  if((any(grep("Sticky Web[|]p1a", battlelog$log,-i))) == TRUE){
    st2count <- sum((any(grep("Sticky Web[|]p1a", battlelog$log,-i))), na.rm=TRUE) 
    return(st2count)}
  else{
    st2count <- 0 
  }
  st2count
}

defog1countr <- function(battlelog){
  if((any(grep("Defog[|]p2a", battlelog$log,-i))) == TRUE){
    defog1count <- sum((any(grep("Defog[|]p2a", battlelog$log,-i))), na.rm=TRUE) 
    return(defog1count)}
  else{
    defog1count <- 0 
  }
  defog1count
}

defog2countr <- function(battlelog){
  if((any(grep("Defog[|]p1a", battlelog$log,-i))) == TRUE){
    defog2count <- sum((any(grep("Defog[|]p1a", battlelog$log,-i))), na.rm=TRUE) 
    return(defog2count)}
  else{
    defog2count <- 0 
  }
  defog2count
}

rapidsp1countr <- function(battlelog){
  if((any(grep("Rapid Spin[|]p2a", battlelog$log,-i))) == TRUE){
    rapidsp1count <- sum((any(grep("Rapid Spin[|]p2a", battlelog$log,-i))), na.rm=TRUE) 
    return(rapidsp1count)}
  else{
    rapidsp1count <- 0 
  }
  rapidsp1count
}

rapidsp2countr <- function(battlelog){
  if((any(grep("Rapid Spin[|]p1a", battlelog$log,-i))) == TRUE){
    rapidsp2count <- sum((any(grep("Rapid Spin[|]p1a", battlelog$log,-i))), na.rm=TRUE) 
    return(rapidsp2count)}
  else{
    rapidsp2count <- 0 
  }
  rapidsp2count
}

dt1countr <- function(battlelog){
  if((any(grep("Dragon Tail[|]p2a", battlelog$log,-i))) == TRUE){
    dt1count <- sum((any(grep("Dragon Tail[|]p2a", battlelog$log,-i))), na.rm=TRUE) 
    return(dt1count)}
  else{
    dt1count <- 0 
  }
  dt1count
}

dt2countr <- function(battlelog){
  if((any(grep("Dragon Tail[|]p1a", battlelog$log,-i))) == TRUE){
    dt2count <- sum((any(grep("Dragon Tail[|]p1a", battlelog$log,-i))), na.rm=TRUE) 
    return(dt2count)}
  else{
    dt2count <- 0 
  }
  dt2count
}

roar1countr <- function(battlelog){
  if((any(grep("Roarl[|]p2a", battlelog$log,-i))) == TRUE){
    roar1count <- sum((any(grep("Roar[|]p2a", battlelog$log,-i))), na.rm=TRUE) 
    return(roar1count)}
  else{
    roar1count <- 0 
  }
  roar1count
}

roar2countr <- function(battlelog){
  if((any(grep("Roarl[|]p1a", battlelog$log,-i))) == TRUE){
    roar2count <- sum((any(grep("Roar[|]p1a", battlelog$log,-i))), na.rm=TRUE) 
    return(roar2count)}
  else{
    roar2count <- 0 
  }
  roar2count
}

whirl1countr <- function(battlelog){
  if((any(grep("Whirlwind[|]p2a", battlelog$log,-i))) == TRUE){
    whirl1count <- sum((any(grep("Whirlwind[|]p2a", battlelog$log,-i))), na.rm=TRUE) 
    return(whirl1count)}
  else{
    whirl1count <- 0 
  }
  whirl1count
}

whirl2countr <- function(battlelog){
  if((any(grep("Whirlwind[|]p1a", battlelog$log,-i))) == TRUE){
    whirl2count <- sum((any(grep("Whirlwind[|]p1a", battlelog$log,-i))), na.rm=TRUE) 
    return(whirl2count)}
  else{
    whirl2count <- 0 
  }
  whirl2count
}
# team roster and mega item count
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
  if(length(battlelog$p1team$species) < 6) {
    teamfunc2 <- c(NA, NA, NA, NA, NA, NA)
    p2roster <- nroster %in% toupper(teamfunc2)
    return(p2roster)
  }
  if(length(battlelog$p2team$species) < 6) {
    teamfunc1 <- c(NA, NA, NA, NA, NA, NA)
    p2roster <- nroster %in% toupper(teamfunc2)
    return(p2roster)
  }
  else {
    p2roster <- nroster %in% toupper(battlelog$p2team$species)
  }
  p2roster
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
#random
randp1rank <- function(battlelog) {
  if((battlelog$endType) == "draw") {
    p1match <- NA
  }
  else {
    p1match <- (as.numeric(pages[[i]]$p1rating$lacre)) 
  }
  p1match
}

randp2rank <- function(battlelog) {
  if((battlelog$endType) == "draw") {
    p2match <- NA
  }
  else {
    p2match <- (as.numeric(pages[[i]]$p2rating$lacre)) 
  }
  p2match
}
# switch counter
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
# win function
p1func <- function(battlelog) {
  if((battlelog$endType) == "draw") {
    p1out <- NA
  }
  if((battlelog$p1rating$acre > battlelog$p1rating$lacre) == TRUE) {
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
  if((battlelog$p2rating$acre > battlelog$p2rating$lacre) == TRUE) {
    p2out <- 1
  }
  else {
    p2out <- 0
  }
  p2out
}

turn_lengths <- function(battlelog){
  turn_length <- as.numeric(battlelog$turns)
  turn_length
}

# not roster count=14 columns
# w/ roster count=429
# w/ roster(39) + mega count(415)= 468  
# randbats
randsimp1grab <- function(battlelog) {
  data.frame(
    outcome=p1func(battlelog),
    player1=1,
    p1rank=randp1rank(battlelog),
    length=turn_lengths(battlelog),
    switches=swcounter1(battlelog),
    stealthrockcount=strock1countr(battlelog),
    spikescount=spikecountr1(battlelog),
    toxspikecount=toxspikecountr1(battlelog),
    stickywebcount=sticky1count(battlelog),
    defogcount=defog1countr(battlelog),
    rapidspincount=rapidsp1countr(battlelog),
    dragontailcount=dt1countr(battlelog),
    roarcount=roar1countr(battlelog),
    whilrwindcount=whirl1countr(battlelog)
  )
}

randrost1 <- function(battlelog) {
  data.frame(roster=p1teamrost(battlelog))
}
rosterselect1 <- matrix(nrow=415, ncol= length(pages))
for(i in 1:length(pages)) {for(j in 1:415) {rosterselect1[j,i] <- randrost1(pages[[i]])[j,] }}
trosterselect1 <- t(rosterselect1)

megarost1 <- function(battlelog) {
  data.frame(megaroster=p1mega(battlelog))
}
megaselect1 <- matrix(nrow=39, ncol= length(pages))
for( i in 1:length(pages)) {for(j in 1:39) {megaselect1[j,i] <- megarost1(pages[[i]])[j,] }}
tmegaselect1 <- t(megaselect1)

randsm1data <- matrix(nrow=n, ncol=14)
for(i in 1:length(pages)) { for(j in 1:14) {randsm1data[i,j] <- randsimp1grab(pages[[i]])[,j] }}
battleid <- (1:length(pages))
randsmrdata1 <- cbind.data.frame(battleid,randsm1data, trosterselect1, tmegaselect1) 


randsimp2grab <- function(battlelog) {
  data.frame(
    outcome=p2func(battlelog),
    player2=2,
    rank=randp2rank(battlelog),
    lengths=turn_lengths(battlelog),
    switches=swcounter2(battlelog),
    stealthrockcount=strock2countr(battlelog),
    spikescount=spikecountr2(battlelog),
    toxspikecount=toxspikecountr2(battlelog),
    stickywebcount=sticky2count(battlelog),
    defogcount=defog2countr(battlelog),
    rapidspincount=rapidsp2countr(battlelog),
    dragontailcount=dt2countr(battlelog),
    roarcount=roar2countr(battlelog),
    whilrwindcount=whirl2countr(battlelog)
  )
}

randrost2 <- function(battlelog) {
  data.frame(roster=p2teamrost(battlelog))
}
rosterselect2 <- matrix(nrow=415, ncol= length(pages))
for(i in 1:length(pages)) {for(j in 1:415) {rosterselect2[j,i] <- randrost2(pages[[i]])[j,] }}
trosterselect2 <- t(rosterselect2)

megarost2 <- function(battlelog) {
  data.frame(megaroster=p2mega(battlelog))
}
megaselect2 <- matrix(nrow=39, ncol= length(pages))
for(i in 1:length(pages)) {for(j in 1:39) {megaselect2[j,i] <- megarost2(pages[[i]])[j,] }}
tmegaselect2 <- t(megaselect2)

randsm2data <- matrix(nrow=n, ncol=14)
for(i in 1:length(pages)) { for(j in 1:14) {randsm2data[i,j] <- randsimp2grab(pages[[i]])[,j] }}
battleid <- (1:length(pages))
randsmrdata2 <- cbind.data.frame(battleid,randsm2data, trosterselect2, tmegaselect2)

randsmdata <- rbind(randsmrdata1, randsmrdata2)


