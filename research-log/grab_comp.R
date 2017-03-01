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
library(foreach)  
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