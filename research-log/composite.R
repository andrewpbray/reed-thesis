filenames <- list.files()
library(jsonlite)
library(ggplot2)
pages <- list()
for(i in seq_along(filenames)) {
  mydata <- fromJSON(filenames[i], simplifyDataFrame = TRUE)
  pages[[i]] <- mydata
}

turn_lengths <- rep(0, length(pages))
for(i in seq_along(pages)) {
  turn_lengths[i] <- pages[[i]]$turns
}
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
# win lose functions
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
# current working grabber
grab_comp1 <- function(battlelog) {
  data.frame(rank=rep(c(p1rank(battlelog),p2rank(battlelog))),
             player=rep(1:2,each=1),
             outcome=rep(c(p1func(battlelog), p2func(battlelog))),
             switches=rep(c(swcounter1(battlelog),swcounter2(battlelog)))
  )} 
grab_comp1(pages[[i]])  

table1 <- rep(NA, length(pages)) 
for(i in 1:length(pages)) {table1[i] <- rbind.data.frame(grab_comp1(pages[[i]])[1,],grab_comp1(pages[[i]])[2,])}


