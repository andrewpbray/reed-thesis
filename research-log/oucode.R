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

# Hazards; 
# Toxic Spikes
toxspikesst <- function(battlelog) {
  if((battlelog$endType) == "draw") {
    toxspikes <- NA
  }
  if(((any(grep("[|]Toxic Spikes[|]p1a", battlelog))) == FALSE) & (any(grep("[|]Toxic Spikes[|]p2a", battlelog)) == FALSE)) {
    toxspikes <- NA
    return(toxspikes)
  }
  if(((any(grep("[|]Toxic Spikes[|]p1a", battlelog))) == TRUE) & ((any(grep("[|]Toxic Spikes[|]p2a", battlelog))) == TRUE)) {
    toxspikes <- NA
    return(toxspikes)
  }
  if(((battlelog$p1rating$elo > battlelog$p1rating$oldelo) == TRUE) & (any(grep("[|]Toxic Spikes[|]p1a", battlelog)) == TRUE)){
    toxspikes <- 1
  }
  if(((battlelog$p2rating$elo > battlelog$p2rating$oldelo) == TRUE) & (any(grep("[|]Toxic Spikes[|]p2a", battlelog)) == TRUE)){
    toxspikes <- 1
  }
  if(((battlelog$p2rating$elo > battlelog$p2rating$oldelo) == TRUE) & (any(grep("[|]Toxic Spikes[|]p1a", battlelog)) == TRUE)){
    toxspikes <- 0
  }
  if(((battlelog$p1rating$elo > battlelog$p1rating$oldelo) == TRUE) & (any(grep("[|]Toxic Spikes[|]p2a", battlelog)) == TRUE)){
    toxspikes <- 0
  }
  toxspikes
}

toxspikewin <- rep(NA, length(pages)) 
for(i in 1:length(pages)) { toxspikewin[i] <-toxspikesst(pages[[i]])}
# Tox Spikes Count
toxspikesct <- function(battlelog) {
  if((battlelog$endType) == "draw") {
    cttoxspikes <- NA
  }
  if(((any(grep("[|]Toxic Spikes[|]p1a", battlelog))) == FALSE) & (any(grep("[|]Toxic Spikes[|]p2a", battlelog)) == FALSE)) {
    cttoxspikes <- NA
    return(cttoxspikes)
  }
  if(((any(grep("[|]Toxic Spikes[|]p2a", battlelog))) == TRUE)) {
    cttoxspikes <- NA
    return(cttoxspikes)
  }
  if((any(grep("[|]Toxic Spikes[|]p1a", battlelog)) == TRUE)){
    cttoxspikes <- length(grep("[|]Toxic Spikes[|]p1a", battlelog)) 
  }
  if((any(grep("[|]Toxic Spikes[|]p2a", battlelog)) == TRUE)){
    cttoxspikes <- length(grep("[|]Toxic Spikes[|]p2a", battlelog))
  }
  cttoxspikes
}

cttoxspikewin <- rep(NA, length(pages)) 
for(i in 1:length(pages)) { cttoxspikewin[i] <-toxspikesct(pages[[i]])}

d1length <- data.frame(turn_lengths)
ggplot(d1length, aes(x = turn_lengths)) + geom_histogram()

# working code for the dataset of toxic spikes win and count; need to include condition for both players use
d2toxs = data.frame(toxspikewin, cttoxspikewin)

ggplot(d2toxs, aes(x = cttoxspikewin)) + geom_histogram()

# Spikes
spikesst <- function(battlelog) {
  if((battlelog$endType) == "draw") {
    spikes <- NA
  }
  if(((any(grep("[|]Spikes[|]p1a", battlelog))) == FALSE) & (any(grep("[|]Spikes[|]p2a", battlelog)) == FALSE)) {
    spikes <- NA
    return(spikes)
  }
  if(((any(grep("[|]Spikes[|]p1a", battlelog))) == TRUE) & ((any(grep("[|]Spikes[|]p2a", battlelog))) == TRUE)) {
    spikes <- NA
    return(spikes)
  }
  if(((battlelog$p1rating$elo > battlelog$p1rating$oldelo) == TRUE) & (any(grep("[|]Spikes[|]p1a", battlelog)) == TRUE)){
    spikes <- 1
  }
  if(((battlelog$p2rating$elo > battlelog$p2rating$oldelo) == TRUE) & (any(grep("[|]Spikes[|]p2a", battlelog)) == TRUE)){
    spikes <- 1
  }
  if(((battlelog$p2rating$elo > battlelog$p2rating$oldelo) == TRUE) & (any(grep("[|]Spikes[|]p1a", battlelog)) == TRUE)){
    spikes <- 0
  }
  if(((battlelog$p1rating$elo > battlelog$p1rating$oldelo) == TRUE) & (any(grep("[|]Spikes[|]p2a", battlelog)) == TRUE)){
    spikes <- 0
  }
  spikes
}

spikewin <- rep(NA, length(pages)) 
for(i in 1:length(pages)) { spikewin[i] <-spikesst(pages[[i]])}
# Spikes Count
spikesct <- function(battlelog) {
  if((battlelog$endType) == "draw") {
    ctspikes <- NA
  }
  if(((any(grep("[|]Spikes[|]p1a", battlelog))) == FALSE) & (any(grep("[|]Spikes[|]p2a", battlelog)) == FALSE)) {
    ctspikes <- NA
    return(ctspikes)
  }
  if(((any(grep("[|]Spikes[|]p1a", battlelog))) == TRUE) & ((any(grep("[|]Spikes[|]p2a", battlelog))) == TRUE)) {
    ctspikes <- NA
    return(ctspikes)
  }
  if((any(grep("[|]Spikes[|]p1a", battlelog)) == TRUE)){
    ctspikes <- length(grep("[|]Spikes[|]p1a", battlelog)) 
  }
  if((any(grep("[|]Spikes[|]p2a", battlelog)) == TRUE)){
    ctspikes <- length(grep("[|]Spikes[|]p2a", battlelog))
  }
  ctspikes
}

ctspikewin <- rep(NA, length(pages)) 
for(i in 1:length(pages)) { ctspikewin[i] <-spikesct(pages[[i]])}
# Stealth Rock
stealthrk <- function(battlelog) {
  if((battlelog$endType) == "draw") {
    strocks <- NA
  }
  if(((any(grep("[|]Stealth Rock[|]p1a", battlelog))) == FALSE) & (any(grep("[|]Stealth Rock[|]p2a", battlelog)) == FALSE)) {
    strocks <- NA
    return(strocks)
  }
  if(((any(grep("[|]Stealth Rock[|]p1a", battlelog))) == TRUE) & ((any(grep("[|]Stealth Rock[|]p2a", battlelog))) == TRUE)) {
    strocks <- NA
    return(strocks)
  }
  if(((battlelog$p1rating$elo > battlelog$p1rating$oldelo) == TRUE) & (any(grep("[|]Stealth Rock[|]p1a", battlelog)) == TRUE)){
    strocks <- 1
  }
  if(((battlelog$p2rating$elo > battlelog$p2rating$oldelo) == TRUE) & (any(grep("[|]Stealth Rock[|]p2a", battlelog)) == TRUE)){
    strocks <- 1
  }
  if(((battlelog$p2rating$elo > battlelog$p2rating$oldelo) == TRUE) & (any(grep("[|]Stealth Rock[|]p1a", battlelog)) == TRUE)){
    strocks <- 0
  }
  if(((battlelog$p1rating$elo > battlelog$p1rating$oldelo) == TRUE) & (any(grep("[|]Stealth Rock[|]p2a", battlelog)) == TRUE)){
    strocks <- 0
  }
  strocks
}

srockwin <- rep(NA, length(pages)) 
for(i in 1:length(pages)) { srockwin[i] <-stealthrk(pages[[i]])}
# Stealth Rock Count
strockct <- function(battlelog) {
  if((battlelog$endType) == "draw") {
    ctrocks <- NA
  }
  if(((any(grep("[|]Stealth Rock[|]p1a", battlelog))) == FALSE) & (any(grep("[|]Stealth Rock[|]p2a", battlelog)) == FALSE)) {
    ctrocks <- NA
    return(ctrocks)
  }
  if(((any(grep("[|]Stealth Rock[|]p1a", battlelog))) == TRUE) & ((any(grep("[|]Stealth Rock[|]p2a", battlelog))) == TRUE)) {
    ctrocks <- NA
    return(ctrocks)
  }
  if((any(grep("[|]Stealth Rock[|]p1a", battlelog)) == TRUE)){
    ctrocks <- length(grep("[|]Stealth Rock[|]p1a", battlelog)) 
  }
  if((any(grep("[|]Stealth Rock[|]p2a", battlelog)) == TRUE)){
    ctrocks <- length(grep("[|]Stealth Rock[|]p2a", battlelog))
  }
  ctrocks
}

countrstrock <- rep(NA, length(pages)) 
for(i in 1:length(pages)) { countrstrock[i] <-strockct(pages[[i]])}
# Sticky Web
stickywebs <- function(battlelog) {
  if((battlelog$endType) == "draw") {
    swebs <- NA
  }
  if(((any(grep("[|]Sticky Web[|]p1a", battlelog))) == FALSE) & (any(grep("[|]Sticky Web[|]p2a", battlelog)) == FALSE)) {
    swebs <- NA
    return(swebs)
  }
  if(((any(grep("[|]Sticky Web[|]p1a", battlelog))) == TRUE) & ((any(grep("[|]Sticky Web[|]p2a", battlelog))) == TRUE)) {
    swebs <- NA
    return(swebs)
  }
  if(((battlelog$p1rating$elo > battlelog$p1rating$oldelo) == TRUE) & (any(grep("[|]Sticky Web[|]p1a", battlelog)) == TRUE)){
    swebs <- 1
  }
  if(((battlelog$p2rating$elo > battlelog$p2rating$oldelo) == TRUE) & (any(grep("[|]Sticky Web[|]p2a", battlelog)) == TRUE)){
    swebs <- 1
  }
  if(((battlelog$p2rating$elo > battlelog$p2rating$oldelo) == TRUE) & (any(grep("[|]Sticky Web[|]p1a", battlelog)) == TRUE)){
    swebs <- 0
  }
  if(((battlelog$p1rating$elo > battlelog$p1rating$oldelo) == TRUE) & (any(grep("[|]Sticky Web[|]p2a", battlelog)) == TRUE)){
    swebs <- 0
  }
  swebs
}

stickywebswin <- rep(NA, length(pages)) 
for(i in 1:length(pages)) { stickywebswin[i] <-stickywebs(pages[[i]])}
# Nü count for including both cases as not NA 
# needs to include win outcome

nucount <- function(battlelog){
  if((battlelog$endType) == "draw") {
    stickyuse <- NA
  }
  if(((any(grep("[|]Sticky Web[|]p1a", battlelog))) == FALSE) && (any(grep("[|]Sticky Web[|]p2a", battlelog)) == FALSE)) {
    stickyuse <- NA
    return(stickyuse)
  }
  if(any(grep("(Sticky Web[|]p1a) && (Sticky Web[|]p2a)", battlelog)) == TRUE) {
    stickyuse <- c(length(grep("[|]Sticky Web[|]p1a", battlelog)), length(grep("[|]Sticky Web[|]p2a", battlelog))) 
    } 
  if((any(grep("[|]Sticky Web[|]p1a", battlelog)) == TRUE) && (any(grep("[|]Sticky Web[|]p2a", battlelog)) == FALSE)) {
    stickyuse <- c(length(grep("[|]Sticky Web[|]p1a", battlelog)), 0)
    }
  if((any(grep("[|]Sticky Web[|]p2a", battlelog)) == TRUE) && (any(grep("[|]Sticky Web[|]p1a", battlelog)) == FALSE)){
    stickyuse <- c(0, length(grep("[|]Sticky Web[|]p2a", battlelog)))
    }
  stickyuse 
}
# issue with application again
nuset <- rep(NA, length(pages))
for(i in 1:length(pages)) {nuset[i] <- nucount(pages[[i]])}

# Switch Counter
waitswitchr <- function(battlelog) {
  if(battlelog$turns == 0) {
    wswitch <- NA 
    return(wswitch)
  }
  if(battlelog$endType == "draw") {
    wswitch <- NA
  }
  if(((length(grep("switch[|]p2a", battlelog$log))) == (length(grep("switch[|]p1a", battlelog$log)))) & ((battlelog$p2rating$elo > battlelog$p2rating$oldelo)) == TRUE){
    wswitch <- (length(grep("switch[|]p1a", battlelog$log)))/(as.numeric(battlelog$turns))  
  }
  if(((length(grep("switch[|]p2a", battlelog$log))) > (length(grep("switch[|]p1a", battlelog$log)))) & ((battlelog$p2rating$elo > battlelog$p2rating$oldelo)) == TRUE){
    wswitch <- (length(grep("switch[|]p2a", battlelog$log)))/(as.numeric(battlelog$turns))  
  }
  if(((length(grep("switch[|]p2a", battlelog$log))) < (length(grep("switch[|]p1a", battlelog$log)))) & ((battlelog$p2rating$elo > battlelog$p2rating$oldelo)) == TRUE){
    wswitch <- (length(grep("switch[|]p2a", battlelog$log)))/(as.numeric(battlelog$turns))  
  }
  if(((length(grep("switch[|]p1a", battlelog$log))) > (length(grep("switch[|]p2a", battlelog$log)))) & ((battlelog$p1rating$elo > battlelog$p1rating$oldelo)) == TRUE){
    wswitch <- (length(grep("switch[|]p1a", battlelog$log)))/(as.numeric(battlelog$turns)) 
  }
  if(((length(grep("switch[|]p1a", battlelog$log))) < (length(grep("switch[|]p2a", battlelog$log)))) & ((battlelog$p1rating$elo > battlelog$p1rating$oldelo)) == TRUE){
    wswitch <- (length(grep("switch[|]p1a", battlelog$log)))/(as.numeric(battlelog$turns)) 
  }
  wswitch
}

weightswin <- rep(NA, length(pages))
for(i in 1:length(pages)) { weightswin[i] <- waitswitchr(pages[[i]])}

# regular switcher
swcounter <- function(battlelog) {
  if(battlelog$turns == 0) {
    swcount <- NA 
    return(swcount)
  }
  if(battlelog$endType == "draw") {
    swcount <- NA
  }
  if(((length(grep("switch[|]p2a", battlelog$log))) == (length(grep("switch[|]p1a", battlelog$log)))) & ((battlelog$p2rating$elo > battlelog$p2rating$oldelo)) == TRUE){
    swcount <- NA 
  }
  if(((length(grep("switch[|]p2a", battlelog$log))) > (length(grep("switch[|]p1a", battlelog$log)))) & ((battlelog$p2rating$elo > battlelog$p2rating$oldelo)) == TRUE){
    swcount <- 1 
  }
  if(((length(grep("switch[|]p2a", battlelog$log))) < (length(grep("switch[|]p1a", battlelog$log)))) & ((battlelog$p2rating$elo > battlelog$p2rating$oldelo)) == TRUE){
    swcount <- 0 
  }
  if(((length(grep("switch[|]p1a", battlelog$log))) > (length(grep("switch[|]p2a", battlelog$log)))) & ((battlelog$p1rating$elo > battlelog$p1rating$oldelo)) == TRUE){
    swcount <- 1 
  }
  if(((length(grep("switch[|]p1a", battlelog$log))) < (length(grep("switch[|]p2a", battlelog$log)))) & ((battlelog$p1rating$elo > battlelog$p1rating$oldelo)) == TRUE){
    swcount <- 0 
  }
  swcount
}

switchwin <- rep(NA, length(pages))
for(i in 1:length(pages)) { switchwin[i] <- swcounter(pages[[i]])}