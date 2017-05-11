filenames <- list.files()
library(jsonlite)
pages <- list()
for(i in seq_along(filenames)) {
  mydata <- fromJSON(filenames[i], simplifyDataFrame = TRUE)
  pages[[i]] <- mydata
}

# Sticky Web
stickywinlose <- function(battlelog) {
  if((battlelog$endType) == "draw") {
    stickystat <- NA
  }
  if(((any(grep("[|]Sticky Web[|]p1a", battlelog))) == FALSE) & (any(grep("[|]Sticky Web[|]p2a", battlelog)) == FALSE)) {
    stickystat <- NA
    return(stickystat)
  }
  if(((any(grep("[|]Sticky Web[|]p1a", battlelog))) == TRUE) & ((any(grep("[|]Sticky Web[|]p2a", battlelog))) == TRUE)) {
    stickystat <- NA
    return(stickystat)
  }
  if(((battlelog$p1rating$elo > battlelog$p1rating$oldelo) == TRUE) & (any(grep("[|]Sticky Web[|]p1a", battlelog)) == TRUE)){
    stickystat <- 1
  }
  if(((battlelog$p2rating$elo > battlelog$p2rating$oldelo) == TRUE) & (any(grep("[|]Sticky Web[|]p2a", battlelog)) == TRUE)){
    stickystat <- 1
  }
  if(((battlelog$p2rating$elo > battlelog$p2rating$oldelo) == TRUE) & (any(grep("[|]Sticky Web[|]p1a", battlelog)) == TRUE)){
    stickystat <- 0
  }
  if(((battlelog$p1rating$elo > battlelog$p1rating$oldelo) == TRUE) & (any(grep("[|]Sticky Web[|]p2a", battlelog)) == TRUE)){
    stickystat <- 0
  }
  stickystat
}

winstick <- rep(NA, length(pages)) 
for(i in 1:length(pages)) { winstick[i] <- stickywinlose(pages[[i]])}

# Stealth Rock
strock <- function(battlelog) {
  if((battlelog$endType) == "draw") {
    stthrock <- NA
  }
  if(((any(grep("[|]Stealth Rock[|]p1a", battlelog)) == TRUE)) & (any(grep("[|]Stealth Rock[|]p2a", battlelog)) == TRUE)){
    stthrock <- NA
  }
  if(any(grep("(Stealth Rock[|]p1a) | (Stealth Rock[|]p2a)", battlelog)) == FALSE) {
    stthrock <- NA
  }
  if(((battlelog$p1rating$elo > battlelog$p1rating$oldelo) == TRUE) & (any(grep("[|]Stealth Rock[|]p1a", battlelog)) == TRUE)){
    stthrock <- 1
  }
  if(((battlelog$p2rating$elo > battlelog$p2rating$oldelo) == TRUE) & (any(grep("[|]Stealth Rock[|]p2a", battlelog)) == TRUE)){
    stthrock <- 1
  }
  if(((battlelog$p2rating$elo > battlelog$p2rating$oldelo) == TRUE) & (any(grep("[|]Stealth Rock[|]p1a", battlelog)) == TRUE)){
    stthrock <- 0
  }
  if(((battlelog$p1rating$elo > battlelog$p1rating$oldelo) == TRUE) & (any(grep("[|]Stealth Rock[|]p2a", battlelog)) == TRUE)){
    stthrock <- 0
  }
  stthrock
}

winrock <- rep(NA, length(pages)) 
for(i in 1:length(pages)) { winrock[i] <- strock(pages[[i]])}
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

