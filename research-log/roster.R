filenames <- list.files()
library(jsonlite)
library(ggplot2)
pages <- list()
for(i in seq_along(filenames)) {
  mydata <- fromJSON(filenames[i], simplifyDataFrame = TRUE)
  pages[[i]] <- mydata
}

n <- length(pages)
# count = 39 
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
# count = 93
stealthrost <- c("Aerodactyl",
                "Aggron",
                "Archeops",      
                "Armaldo",
                "Aurorus",
                "Azelf",        
"Barbaracle",    "Bastiodon",      "Bibarel"  ,     
"Bisharp",      "Blissey",        "Bronzong" ,     
"Camerupt",      "Carbink" ,       "Carracosta",    
"Celebi",      "Chansey"  ,      "Claydol" ,      
"Clefable",      "Clefairy"  ,     "Cobalion",      
"Corsola",      "Cradily"    ,    "Crustle" ,      
"Diancie",      "Donphan"     ,   "Druddigon",     
"Dugtrio",      "Dunsparce" ,     "Empoleon"  ,    
"Excadrill",      "Ferroseed" ,     "Ferrothorn" ,   
"Forretress",     "Gabite"    ,     "Garchomp" ,     
"Gigalith",      "Gligar"  ,       "Gliscor"  ,     
"Golem",       "Golurk"   ,      "Heatran"  ,     
"Hippowdon",      "Infernape",      "Jirachi"  ,     
"Kabutops",      "Kecleon" ,       "Krokorok" ,     
"Krookodile",     "Lunatone",       "Magcargo" ,     
"Mamoswine",     "Marowak" ,       "Mawile"   ,     
"Mesprit",     "Metagross",      "Metang"   ,     
"Mew",       "Miltank"  ,      "Monferno" ,     
"Nidoking",       "Nidoqueen",      "Omastar" ,      
"Pawniard",       "Piloswine",      "Pinsir" ,       
"Prinplup",       "Probopass",      "Rampardos" ,    
"Regirock",       "Registeel",      "Relicanth" ,    
"Rhydon",       "Rhyperior",      "Sandslash" ,    
"Seismitoad",     "Shuckle"  ,      "Skarmory" ,     
"Solrock",       "Steelix"  ,      "Stunfisk" ,     
"Sudowoodo",      "Swampert" ,      "Terrakion",     
"Torkoal",       "Torterra" ,      "Tyranitar",     
"Tyrantrum",      "Uxie"     ,      "Wigglytuff",    
"Wormadam-Sandy",  "Wormadam-Trash" , "Wormadam" 
) 
# count= 22
spikerost <- c("Accelgor" ,  "Cacturne",   "Chesnaught", "Cloyster" ,  "Crustle" ,  
 "Delibird" ,  "Diggersby" , "Ferroseed" , "Ferrothorn" ,"Forretress",
"Froslass" ,  "Garbodor" ,  "Glalie" ,    "Klefki" ,    "Maractus" , 
"Omastar" ,   "Quilladin" , "Qwilfish" ,  "Roselia" ,   "Roserade",  
"Scolipede", "Skarmory"
)

# count= 15
toxsprost <- c("Ariados",    "Beedrill",   "Cloyster" ,  "Cofagrigus" ,"Dragalge" , 
 "Drapion",  "Forretress" ,"Garbodor" ,  "Omastar"  ,  "Qwilfish"  ,
"Roselia" ,   "Scolipede" , "Tentacruel" ,"Venomoth" ,  "Weezing"
)
# count= 4
stickyrost <- c("Ariados",  "Galvantula", "Kricketune", "Shuckle" 
)
# count=15
defogrost <- c("Archeops","Braviary",  "Chatot",    "Crobat",    "Drifblim" ,
 "Golbat",    "Mandibuzz", "Noctowl",   "Pidgeot",   "Scizor"  , 
"Scyther" ,  "Shiftry" ,  "Swanna" ,   "Swellow" ,  "Vullaby"
)
# count=20
rapidrost <- c("Armaldo",   "Avalugg" ,   "Blastoise" , "Claydol"  ,  "Cloyster" , 
 "Cryogonal" , "Delibird" ,  "Donphan"   , "Excadrill",  "Forretress",
"Hitmonchan" ,"Hitmonlee" , "Hitmontop",  "Kabutops",   "Sandslash" ,
"Spinda" ,    "Starmie" ,   "Tentacruel", "Torkoal" ,   "Wartortle"
)
# count= 42
dtrost <- c("Aggron" ,  "Arbok" ,     "Archeops" ,  "Aurorus" ,   "Blastoise" ,
 "Charizard",  "Dragalge" ,  "Dragonair",  "Dragonite",  "Druddigon", 
"Eelektross", "Feraligatr", "Flygon"   ,  "Fraxure"  ,  "Garchomp" , 
"Goodra",     "Gyarados" ,  "Haxorus" ,   "Heliolisk",  "Hydreigon" ,
"Krookodile", "Kyurem" ,    "Lickilicky", "Meganium" ,  "Mew"    ,   
"Milotic" ,   "Nidoking" ,  "Nidoqueen",  "Rampardos" , "Rhydon"  ,  
"Rhyperior" , "Salamence",  "Samurott" ,  "Scrafty"  ,  "Serperior" ,
"Seviper" ,   "Slowking" ,  "Steelix"  ,  "Tyranitar" , "Tyrantrum" ,
"Zweilous" ,  "Zygarde"
)
# count =103
roarrost <- c("Aerodactyl","Aggron",     "Altaria",    "Arcanine" , 
  "Archeops",   "Articuno",   "Aurorus" ,   "Avalugg" ,  
  "Bastiodon",  "Beartic",    "Blastoise",  "Camerupt" , 
 "Charizard",  "Chesnaught", "Cobalion",   "Darmanitan",
 "Donphan",    "Dragonite",  "Drapion",    "Druddigon" ,
 "Eelektross", "Emboar" ,    "Empoleon",   "Entei"     ,
 "Exploud" ,   "Feraligatr", "Flareon",    "Floatzel"  ,
 "Fraxure",    "Furfrou" ,   "Gabite",     "Garchomp"  ,
 "Glaceon",    "Gogoat" ,    "Golem",      "Granbull"  ,
 "Gyarados",   "Haxorus" ,   "Heatran",    "Hippowdon" ,
 "Houndoom" ,  "Hydreigon",  "Infernape",  "Jolteon"   ,
 "Kangaskhan", "Keldeo" ,    "Krokorok",   "Krookodile",
 "Lapras" ,    "Latias" ,    "Latios",     "Leafeon"   ,
 "Linoone",    "Lucario" ,   "Luxray",     "Mamoswine" ,
 "Manectric",  "Mew" ,       "Mightyena",  "Moltres"   ,
 "Nidoking",   "Nidoqueen",  "Ninetales",  "Pangoro"   ,
 "Persian",    "Piloswine",  "Purugly" ,   "Pyroar"    ,
 "Quilladin",  "Raikou",     "Rampardos",  "Raticate"  ,
 "Rhydon" ,    "Rhyperior",  "Salamence",  "Sceptile"  ,
 "Scrafty",    "Sharpedo",   "Skarmory",   "Skuntank"  ,
 "Slaking",    "Stantler",   "Steelix",    "Stoutland" ,
 "Suicune",    "Swampert",   "Terrakion",  "Torterra"  ,
 "Tropius",    "Typhlosion", "Tyranitar",  "Tyrantrum" ,
 "Ursaring",   "Vaporeon",   "Venusaur",   "Vigoroth"  ,
 "Virizion",   "Wailord",    "Walrein",    "Zangoose"  ,
"Zapdos",     "Zoroark",    "Zweilous" 
)
# count =30 
whirlrost <- c("Aerodactyl","Beautifly",  "Braviary",   "Butterfree", "Crobat"  ,  
 "Drapion",   "Dustox",    "Fearow" ,    "Golbat" ,    "Grumpig"  , 
"Hariyama",  "Hippowdon",  "Honchkrow",  "Mandibuzz",  "Masquerain",
"Murkrow",   "Noctowl",  "Noivern"  ,  "Pidgeot"  ,  "Rampardos" ,
"Shiftry",   "Sigilyph",  "Skarmory" ,  "Snorlax" ,   "Staraptor" ,
"Swellow",   "Tropius",  "Volcarona" , "Vullaby" ,   "Yanmega"
)

nroster <- toupper(roster)
nferoster <- toupper(nferost)
nmegarost <- toupper(megarost) 
nmegaitems <- toupper(megaitems) 
nstealthrost <- toupper(stealthrost) 
nspikerost <- toupper(spikerost) 
ntoxsprost <- toupper(toxsprost) 
nstickyrost <- toupper(stickyrost)
ndefogrost <- toupper(defogrost)
nrapidrost <- toupper(rapidrost)
ndtrost <- toupper(dtrost)
nroarrost <- toupper(roarrost)
nwhirlrost <- toupper(whirlrost)

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
# Toxic Spikes function on roster 
nu1toxrost <- function(battlelog) {
   tox1mat <- c(rep(NA,15))
  if((any(grep("Ariados", battlelog$p1team$species, -i))) == FALSE){
    tox1mat[1] <- NA}
  if(((any(grep("Ariados", battlelog$p1team$species, -i))) == TRUE) & ((any(grep("p1a: Ariados[|]Toxic Spikes", battlelog$log,-i))) == TRUE)){
    tox1mat[1] <- TRUE}
  if(((any(grep("Ariados", battlelog$p1team$species, -i))) == TRUE) & ((any(grep("p1a: Ariados[|]Toxic Spikes", battlelog$log,-i))) == FALSE)){
    tox1mat[1] <- FALSE}
  if((any(grep("Beedrill", battlelog$p1team$species, -i))) == FALSE){
    tox1mat[2] <- NA}
  if(((any(grep("Beedrill", battlelog$p1team$species, -i))) == TRUE) & ((any(grep("p1a: Beedrill[|]Toxic Spikes", battlelog$log,-i))) == TRUE)){
    tox1mat[2] <- TRUE}
  if(((any(grep("Beedrill", battlelog$p1team$species, -i))) == TRUE) & ((any(grep("p1a: Beedrill[|]Toxic Spikes", battlelog$log,-i))) == FALSE)){
    tox1mat[2] <- FALSE}
  if((any(grep("Cloyster", battlelog$p1team$species, -i))) == FALSE){
    tox1mat[3] <- NA}
  if(((any(grep("Cloyster", battlelog$p1team$species, -i))) == TRUE) & ((any(grep("p1a: Cloyster[|]Toxic Spikes", battlelog$log,-i))) == TRUE)){
    tox1mat[3] <- TRUE}
  if(((any(grep("Cloyster", battlelog$p1team$species, -i))) == TRUE) & ((any(grep("p1a: Cloyster[|]Toxic Spikes", battlelog$log,-i))) == FALSE)){
    tox1mat[3] <- FALSE}
  if((any(grep("Cofagrigus", battlelog$p1team$species, -i))) == FALSE){
    tox1mat[4] <- NA}
  if(((any(grep("Cofagrigus", battlelog$p1team$species, -i))) == TRUE) & ((any(grep("p1a: Cofagrigus[|]Toxic Spikes", battlelog$log,-i))) == TRUE)){
    tox1mat[4] <- TRUE}
  if(((any(grep("Cofagrigus", battlelog$p1team$species, -i))) == TRUE) & ((any(grep("p1a: Cofagrigus[|]Toxic Spikes", battlelog$log,-i))) == FALSE)){
    tox1mat[4] <- FALSE}
  if((any(grep("Dragalge", battlelog$p1team$species, -i))) == FALSE){
    tox1mat[5] <- NA}
  if(((any(grep("Dragalge", battlelog$p1team$species, -i))) == TRUE) & ((any(grep("p1a: Dragalge[|]Toxic Spikes", battlelog$log,-i))) == TRUE)){
    tox1mat[5] <- TRUE}
  if(((any(grep("Dragalge", battlelog$p1team$species, -i))) == TRUE) & ((any(grep("p1a: Dragalge[|]Toxic Spikes", battlelog$log,-i))) == FALSE)){
    tox1mat[5] <- FALSE}
  if((any(grep("Drapion", battlelog$p1team$species, -i))) == FALSE){
    tox1mat[6] <- NA}
  if(((any(grep("Drapion", battlelog$p1team$species, -i))) == TRUE) & ((any(grep("p1a: Drapion[|]Toxic Spikes", battlelog$log,-i))) == TRUE)){
    tox1mat[6] <- TRUE}
  if(((any(grep("Drapion", battlelog$p1team$species, -i))) == TRUE) & ((any(grep("p1a: Drapion[|]Toxic Spikes", battlelog$log,-i))) == FALSE)){
    tox1mat[6] <- FALSE}
  if((any(grep("Forretress", battlelog$p1team$species, -i))) == FALSE){
    tox1mat[7] <- NA}
  if(((any(grep("Forretress", battlelog$p1team$species, -i))) == TRUE) & ((any(grep("p1a: Forretress[|]Toxic Spikes", battlelog$log,-i))) == TRUE)){
    tox1mat[7] <- TRUE}
  if(((any(grep("Forretress", battlelog$p1team$species, -i))) == TRUE) & ((any(grep("p1a: Forretress[|]Toxic Spikes", battlelog$log,-i))) == FALSE)){
    tox1mat[7] <- FALSE}
  if((any(grep("Garbodor", battlelog$p1team$species, -i))) == FALSE){
    tox1mat[8] <- NA}
  if(((any(grep("Garbodor", battlelog$p1team$species, -i))) == TRUE) & ((any(grep("p1a: Garbodor[|]Toxic Spikes", battlelog$log,-i))) == TRUE)){
    tox1mat[8] <- TRUE}
  if(((any(grep("Garbodor", battlelog$p1team$species, -i))) == TRUE) & ((any(grep("p1a: Garbodor[|]Toxic Spikes", battlelog$log,-i))) == FALSE)){
    tox1mat[8] <- FALSE}
  if((any(grep("Omastar", battlelog$p1team$species, -i))) == FALSE){
    tox1mat[9] <- NA}
  if(((any(grep("Omastar", battlelog$p1team$species, -i))) == TRUE) & ((any(grep("p1a: Omastar[|]Toxic Spikes", battlelog$log,-i))) == TRUE)){
    tox1mat[9] <- TRUE}
  if(((any(grep("Omastar", battlelog$p1team$species, -i))) == TRUE) & ((any(grep("p1a: Omastar[|]Toxic Spikes", battlelog$log,-i))) == FALSE)){
    tox1mat[9] <- FALSE}
  if((any(grep("Qwilfish", battlelog$p1team$species, -i))) == FALSE){
    tox1mat[10] <- NA}
  if(((any(grep("Qwilfish", battlelog$p1team$species, -i))) == TRUE) & ((any(grep("p1a: Qwilfish[|]Toxic Spikes", battlelog$log,-i))) == TRUE)){
    tox1mat[10] <- TRUE}
  if(((any(grep("Qwilfish", battlelog$p1team$species, -i))) == TRUE) & ((any(grep("p1a: Qwilfish[|]Toxic Spikes", battlelog$log,-i))) == FALSE)){
    tox1mat[10] <- FALSE}
  if((any(grep("Roselia", battlelog$p1team$species, -i))) == FALSE){
    tox1mat[11] <- NA}
  if(((any(grep("Roselia", battlelog$p1team$species, -i))) == TRUE) & ((any(grep("p1a: Roselia[|]Toxic Spikes", battlelog$log,-i))) == TRUE)){
    tox1mat[11] <- TRUE}
  if(((any(grep("Roselia", battlelog$p1team$species, -i))) == TRUE) & ((any(grep("p1a: Roselia[|]Toxic Spikes", battlelog$log,-i))) == FALSE)){
    tox1mat[11] <- FALSE}
  if((any(grep("Scolipede", battlelog$p1team$species, -i))) == FALSE){
    tox1mat[12] <- NA}
  if(((any(grep("Scolipede", battlelog$p1team$species, -i))) == TRUE) & ((any(grep("p1a: Scolipede[|]Toxic Spikes", battlelog$log,-i))) == TRUE)){
    tox1mat[12] <- TRUE}
  if(((any(grep("Scolipede", battlelog$p1team$species, -i))) == TRUE) & ((any(grep("p1a: Scolipede[|]Toxic Spikes", battlelog$log,-i))) == FALSE)){
    tox1mat[12] <- FALSE}
  if((any(grep("Tentacruel", battlelog$p1team$species, -i))) == FALSE){
    tox1mat[13] <- NA}
  if(((any(grep("Tentacruel", battlelog$p1team$species, -i))) == TRUE) & ((any(grep("p1a: Tentacruel[|]Toxic Spikes", battlelog$log,-i))) == TRUE)){
    tox1mat[13] <- TRUE}
  if(((any(grep("Tentacruel", battlelog$p1team$species, -i))) == TRUE) & ((any(grep("p1a: Tentacruel[|]Toxic Spikes", battlelog$log,-i))) == FALSE)){
    tox1mat[13] <- FALSE}
  if((any(grep("Venomoth", battlelog$p1team$species, -i))) == FALSE){
    tox1mat[14] <- NA}
  if(((any(grep("Venomoth", battlelog$p1team$species, -i))) == TRUE) & ((any(grep("p1a: Venomoth[|]Toxic Spikes", battlelog$log,-i))) == TRUE)){
    tox1mat[14] <- TRUE}
  if(((any(grep("Venomoth", battlelog$p1team$species, -i))) == TRUE) & ((any(grep("p1a: Venomoth[|]Toxic Spikes", battlelog$log,-i))) == FALSE)){
    tox1mat[14] <- FALSE}
  if((any(grep("Weezing", battlelog$p1team$species, -i))) == FALSE){
    tox1mat[15] <- NA}
  if(((any(grep("Weezing", battlelog$p1team$species, -i))) == TRUE) & ((any(grep("p1a: Weezing[|]Toxic Spikes", battlelog$log,-i))) == TRUE)){
    tox1mat[15] <- TRUE}
  if(((any(grep("Weezing", battlelog$p1team$species, -i))) == TRUE) & ((any(grep("p1a: Weezing[|]Toxic Spikes", battlelog$log,-i))) == FALSE)){
    tox1mat[15] <- FALSE}
  tox1mat
}

# sticky function on roster
nu1stickrost <- function(battlelog) {
  sticky1icky <- c(rep(NA,4))
  if((any(grep("Ariados", battlelog$p1team$species, -i))) == FALSE){
    sticky1icky[1] <- NA}
  if(((any(grep("Ariados", battlelog$p1team$species, -i))) == TRUE) & ((any(grep("p1a: Ariados[|]Sticky Web", battlelog$log,-i))) == TRUE)){
    sticky1icky[1] <- TRUE}
  if(((any(grep("Ariados", battlelog$p1team$species, -i))) == TRUE) & ((any(grep("p1a: Ariados[|]Sticky Web", battlelog$log,-i))) == FALSE)){
    sticky1icky[1] <- FALSE}
  if((any(grep("Galvantula", battlelog$p1team$species, -i))) == FALSE){
    sticky1icky[2] <- NA}
  if(((any(grep("Galvantula", battlelog$p1team$species, -i))) == TRUE) & ((any(grep("p1a: Galvantula[|]Sticky Web", battlelog$log,-i))) == TRUE)){
    sticky1icky[2] <- TRUE}
  if(((any(grep("Galvantula", battlelog$p1team$species, -i))) == TRUE) & ((any(grep("p1a: Galvantula[|]Sticky Web", battlelog$log,-i))) == FALSE)){
    sticky1icky[2] <- FALSE}
  if((any(grep("Kricketune", battlelog$p1team$species, -i))) == FALSE){
    sticky1icky[3] <- NA}
  if(((any(grep("Kricketune", battlelog$p1team$species, -i))) == TRUE) & ((any(grep("p1a:Kricketune[|]Sticky Web", battlelog$log,-i))) == TRUE)){
    sticky1icky[3] <- TRUE}
  if(((any(grep("Kricketune", battlelog$p1team$species, -i))) == TRUE) & ((any(grep("p1a:Kricketune[|]Sticky Web", battlelog$log,-i))) == FALSE)){
    sticky1icky[3] <- FALSE}
  if((any(grep("Shuckle", battlelog$p1team$species, -i))) == FALSE){
    sticky1icky[4] <- NA}
  if(((any(grep("Shuckle", battlelog$p1team$species, -i))) == TRUE) & ((any(grep("p1a: Shuckle[|]Sticky Web", battlelog$log,-i))) == TRUE)){
    sticky1icky[4] <- TRUE}
  if(((any(grep("Shuckle", battlelog$p1team$species, -i))) == TRUE) & ((any(grep("p1a: Shuckle[|]Sticky Web", battlelog$log,-i))) == FALSE)){
    sticky1icky[4] <- FALSE}
  sticky1icky
}

nu2stickrost <- function(battlelog) {
  sticky2icky <- c(rep(NA,4))
  if((any(grep("Ariados", battlelog$p2team$species, -i))) == FALSE){
    sticky2icky[1] <- NA}
  if(((any(grep("Ariados", battlelog$p2team$species, -i))) == TRUE) & ((any(grep("p2a: Ariados[|]Sticky Web", battlelog$log,-i))) == TRUE)){
    sticky2icky[1] <- TRUE}
  if(((any(grep("Ariados", battlelog$p2team$species, -i))) == TRUE) & ((any(grep("p2a: Ariados[|]Sticky Web", battlelog$log,-i))) == FALSE)){
    sticky2icky[1] <- FALSE}
  if((any(grep("Galvantula", battlelog$p2team$species, -i))) == FALSE){
    sticky2icky[2] <- NA}
  if(((any(grep("Galvantula", battlelog$p2team$species, -i))) == TRUE) & ((any(grep("p2a: Galvantula[|]Sticky Web", battlelog$log,-i))) == TRUE)){
    sticky2icky[2] <- TRUE}
  if(((any(grep("Galvantula", battlelog$p2team$species, -i))) == TRUE) & ((any(grep("p2a: Galvantula[|]Sticky Web", battlelog$log,-i))) == FALSE)){
    sticky2icky[2] <- FALSE}
  if((any(grep("Kricketune", battlelog$p2team$species, -i))) == FALSE){
    sticky2icky[3] <- NA}
  if(((any(grep("Kricketune", battlelog$p2team$species, -i))) == TRUE) & ((any(grep("p2a:Kricketune[|]Sticky Web", battlelog$log,-i))) == TRUE)){
    sticky2icky[3] <- TRUE}
  if(((any(grep("Kricketune", battlelog$p2team$species, -i))) == TRUE) & ((any(grep("p2a:Kricketune[|]Sticky Web", battlelog$log,-i))) == FALSE)){
    sticky2icky[3] <- FALSE}
  if((any(grep("Shuckle", battlelog$p2team$species, -i))) == FALSE){
    sticky2icky[4] <- NA}
  if(((any(grep("Shuckle", battlelog$p2team$species, -i))) == TRUE) & ((any(grep("p2a: Shuckle[|]Sticky Web", battlelog$log,-i))) == TRUE)){
    sticky2icky[4] <- TRUE}
  if(((any(grep("Shuckle", battlelog$p2team$species, -i))) == TRUE) & ((any(grep("p2a: Shuckle[|]Sticky Web", battlelog$log,-i))) == FALSE)){
    sticky2icky[4] <- FALSE}
  sticky2icky
}

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

# rank functions
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

turn_lengths <- function(battlelog){
  turn_length <- battlelog$turns
  turn_length
}

# grabs
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


# simple grab
# need battle length, 
simp1grab <- function(battlelog) {
  data.frame(
     p1outcome=p1func(battlelog),
     player1=1,
     p1rank=p1rank(battlelog),
     length=turn_lengths(battlelog),
     p1switches=swcounter1(battlelog),
     p1stealthrockcount=strock1countr(battlelog),
     p1spikescount=spikecountr1(battlelog),
     p1toxspikecount=toxspikecountr1(battlelog),
     p1stickywebcount=sticky1count(battlelog),
     p1defogcount=defog1countr(battlelog),
     p1rapidspincount=rapidsp1countr(battlelog),
     p1dragontailcount=dt1countr(battlelog),
     p1roarcount=roar1countr(battlelog),
     p1whilrwindcount=whirl1countr(battlelog)
  )
}

sm1data <- matrix(nrow=n, ncol=14)
for(i in 1:length(pages)) { for(j in 1:14) {sm1data[i,j] <- simp1grab(pages[[i]])[,j] }}

simp2grab <- function(battlelog) {
  data.frame(
    p2outcome=p2func(battlelog),
    player2=2,
    p2rank=p2rank(battlelog),
    length=turn_lengths(battlelog),
    p2switches=swcounter2(battlelog),
    p2stealthrockcount=strock2countr(battlelog),
    p2spikescount=spikecountr2(battlelog),
    p2toxspikecount=toxspikecountr2(battlelog),
    p2stickywebcount=sticky2count(battlelog),
    p2defogcount=defog2countr(battlelog),
    p2rapidspincount=rapidsp2countr(battlelog),
    p2dragontailcount=dt2countr(battlelog),
    p2roarcount=roar2countr(battlelog),
    p2whilrwindcount=whirl2countr(battlelog)
  )
}

sm2data <- matrix(nrow=n, ncol=14)
for(i in 1:length(pages)) { for(j in 1:14) {sm2data[i,j] <- simp2grab(pages[[i]])[,j] }}

smdata <- rbind(sm1data, sm2data)





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



