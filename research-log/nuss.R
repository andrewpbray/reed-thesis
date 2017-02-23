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
# revised code to check if a move is used
stickyreturn <- function(battlelog) { 
  if(any(grep("(Sticky Web[|]p1a) | (Sticky Web[|]p2a)", battlelog)) == FALSE) {
    stickyuse <- NA
  }
  if(any(grep("(Sticky Web[|]p1a) && (Sticky Web[|]p2a)", battlelog)) == TRUE) {
    stickyuse <- 3
  } 
  if(any(grep("[|]Sticky Web[|]p1a", battlelog)) == TRUE) {
    stickyuse <- 1
  } 
  if(any(grep("[|]Sticky Web[|]p2a", battlelog)) == TRUE) {
    stickyuse <- 2
  } 
  stickyuse
}

stickyreturn(pages[[i]]$log) 
stickyverdict <- rep(NA, length(pages))
for(i in 1:length(pages)) { stickyverdict[i] <- stickyreturn(pages[[i]]$log)} 
# code to check who won the battle 
# code first checks if the battle was a draw
# then the code checks if p1 won
# if p1 did not win and it was not a draw, then p2 won 
playerout <- function(battlelog) {
  if((battlelog$endType) == "draw") {
    playout <- NA} 
  if((battlelog$p1rating$elo > battlelog$p1rating$oldelo) == TRUE) {
    playout <- 1}
  else {
    playout <- 2}
  playout
}

playerout(pages[[i]])
winlose <- rep(NA, length(pages)) 
for(i in 1:length(pages)) {winlose[i] <- playerout(pages[[i]])} 
# code to cross compare who won with who used the move 
# code has two matchings that are not important to collect statistics on:
# 1. the move was not used or 2. both players used the move 
# then the code checks if the winning player used the move and returns a 1 if they did
# otherwise the function outputs a 0 if the player who used the move lost and their opponent did not use the move
stickywinlose <- function(battlelog) {
  if((battlelog$endType) == "draw") {
    stickystat <- NA
  }
  if(((any(grep("[|]Sticky Web[|]p1a", battlelog)) == TRUE)) & (any(grep("[|]Sticky Web[|]p2a", battlelog)) == TRUE)){
    stickystat <- NA
  }
  if(any(grep("(Sticky Web[|]p1a) | (Sticky Web[|]p2a)", battlelog)) == FALSE) {
    stickystat <- NA
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

# Weighted Switch stats
swcounter <- function(battlelog) {
  if(battlelog$turns == 0) {
    swcount <- NA 
    return(swcount)
    }
  if(battlelog$endType == "draw") {
    swcount <- NA
    }
  if((grep("switch[|]p2a", battlelog$log)) == (grep("switch[|]p1a", battlelog$lo))) {
    swcount <- 0 
    }
  if(((grep("switch[|]p1a", battlelog$log)) > (grep("switch[|]p2a", battlelog$lo))) & (battlelog$p1rating$lacre > battlelog$p1rating$oldacre)){
    swcount <- 1 
    } 
  if(((grep("switch[|]p2a", battlelog$log)) > (grep("switch[|]p1a", battlelog$lo))) & (battlelog$p2rating$lacre > battlelog$p2rating$oldacre)){
    swcount <- 1 
    }
  if(((grep("switch[|]p1a", battlelog$lo)) > (grep("switch[|]p2a", battlelog$lo))) & (battlelog$p2rating$lacre > battlelog$p2rating$oldacre)){
    swcount <- 0 
    } 
  if(((grep("switch[|]p2a", battlelog$lo)) > (grep("switch[|]p1a", battlelog$lo))) & (battlelog$p1rating$lacre > battlelog$p1rating$oldacre)){
    swcount <- 0 
    }
  swcount
}

switchwin <- rep(NA, length(pages))
for(i in 1:length(pages)) { switchwin[i] <- swcounter(pages[[i]])}
# random uses lacre/oldacre

swcounter <- function(battlelog) {
  if(battlelog$turns == 0) {
    swcount <- NA 
    return(swcount)
  }
  if(battlelog$endType == "draw") {
    swcount <- NA
  }
  if((grep("switch[|]p2a", battlelog$log)) == length(grep("switch[|]p1a", battlelog$log))) {
    swcount <- 0 
  }
  else {
    swcount <- NA 
  }
  swcount
}

switchwin <- rep(NA, length(pages))
for(i in 1:length(pages)) { switchwin[i] <- swcounter(pages[[i]])}
# ou uses elo/oldelo
# weighted switches

waitswitchr <- function(battlelog) {
  if(battlelog$turns == 0) {
    wswitch <- NA 
  }
  if(battlelog$endType == "draw") {
    wswitch <- NA
  }
  if((as.numeric(grep("switch[|]p1a", battlelog$log)) > (as.numeric(grep("switch[|]p2a", battlelog)))) & ((battlelog$p2rating$lacre > battlelog$p2rating$oldacre)) == TRUE) {
    wswitch <- (as.numeric(grep("switch[|]p2a", battlelog)))/(as.numeric(battlelog$turns))
  } 
  if((as.numeric(grep("switch[|]p2a", battlelog)) > (as.numeric(grep("switch[|]p1a", battlelog)))) & ((battlelog$p1rating$lacre > battlelog$p1rating$oldacre)) == TRUE) {
    wswitch <- (as.numeric(grep("switch[|]p1a", battlelog)))/(as.numeric(battlelog$turns))
  } 
  if((as.numeric(grep("switch[|]p1a", battlelog)) > (as.numeric(grep("switch[|]p2a", battlelog)))) & ((battlelog$p1rating$lacre > battlelog$p1rating$oldacre)) == TRUE) {
    wswitch <- (as.numeric(grep("switch[|]p1a", battlelog)))/(as.numeric(battlelog$turns))
  } 
  if((as.numeric(grep("switch[|]p2a", battlelog)) > (as.numeric(grep("switch[|]p1a", battlelog)))) & ((battlelog$p2rating$lacre > battlelog$p2rating$oldacre)) == TRUE) {
    wswitch <- (as.numeric(grep("switch[|]p2a", battlelog)))/(as.numeric(battlelog$turns))
  } 
  if((as.numeric(grep("switch[|]p2a", battlelog))) == (as.numeric(grep("switch[|]p1a", battlelog)))) {
    wswitch <- (as.numeric(grep("switch[|]p1a", battlelog)))/(as.numeric(battlelog$turns)) 
  }
  wswitch
}

waitswitchr(pages[[i]]) 
weightswin <- rep(NA, length(pages))
for(i in 1:length(pages)) { weightswin[i] <- waitswitchr(pages[[i]])}
# ou
lwaitswitchr <- function(battlelog) {
  if(battlelog$turns == 0) {
    lwswitch <- NA 
    return(lwswitch)
  }
  if(battlelog$endType == "draw") {
    lwswitch <- NA
  }
  if(((battlelog$p2rating$elo > battlelog$p2rating$oldelo)) == TRUE) {
    lwswitch <- (as.numeric(grep("switch[|]p1a", battlelog)))/(as.numeric(battlelog$turns))
  } 
  if(((battlelog$p1rating$elo > battlelog$p1rating$oldelo)) == TRUE) {
    lwswitch <- (as.numeric(grep("switch[|]p2a", battlelog)))/(as.numeric(battlelog$turns))
  } 
  if(((grep("switch[|]p2a", battlelog))) == (grep("switch[|]p1a", battlelog))) {
    lwswitch <- (as.numeric(grep("switch[|]p1a", battlelog)))/(as.numeric(battlelog$turns)) 
  }
  lwswitch
}

lwaitswitchr(pages[[i]]) 
lweightswin <- rep(NA, length(pages))
for(i in 1:length(pages)) { lweightswin[i] <- lwaitswitchr(pages[[i]])}

# nü
# for winner
winwaitswitchr <- function(battlelog){
  if(as.numeric(battlelog$turns) == 0) {
    winwswitch <- NA 
    return(winwswitch)
  }
  if(battlelog$endType == "draw") {
    winwswitch <- NA
  }
  if(((battlelog$p2rating$elo > battlelog$p2rating$oldelo)) == TRUE) {
    winwswitch <- (as.numeric(grep("switch[|]p2a", battlelog)))/(as.numeric(battlelog$turns))
  } 
  if(((battlelog$p1rating$elo > battlelog$p1rating$oldelo)) == TRUE) {
    winwswitch <- (as.numeric(grep("switch[|]p1a", battlelog)))/(as.numeric(battlelog$turns))
  } 
  if(((grep("switch[|]p2a", battlelog))) == (grep("switch[|]p1a", battlelog))) {
    winwswitch <- (as.numeric(grep("switch[|]p1a", battlelog)))/(as.numeric(battlelog$turns)) 
  }
  winwswitch
}

winwaitswitchr(pages[[i]]) 
winweightswin <- rep(NA, length(pages))
for(i in 1:length(pages)) { winweightswin[i] <- winwaitswitchr(pages[[i]])}
#
paste(pages[[10]]$log, collapse = "")
