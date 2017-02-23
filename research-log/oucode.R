filenames <- list.files()
library(jsonlite)
pages <- list()
for(i in seq_along(filenames)) {
  mydata <- fromJSON(filenames[i], simplifyDataFrame = TRUE)
  pages[[i]] <- mydata
}

turn_lengths <- rep(0, length(pages))
for(i in seq_along(pages)) {
  turn_lengths[i] <- pages[[i]]$turns
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