# preliminary code
filenames <- list.files()
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
  if(any(grep("(Sticky Web[|]p1a)(Sticky Web[|]p2a)", battlelog)) == TRUE) {stickyuse <- "both"} 
  if(any(grep("[|]Sticky Web[|]p1a", battlelog)) == TRUE) {
    stickyuse <- "p1"} 
  if(any(grep("(Sticky Web[|]p2a)", battlelog)) == TRUE) {stickyuse <- "p2"}
  else {stickyuse <- NA}
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
  if((battlelog$endType) == "draw"){
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
# code to cross compare who won with who used the move 
# code has two matchings that are not important to collect statistics on:
# 1. the move was not used or 2. both players used the move 
# then the code checks if the winning player used the move and returns a 1 if they did
# otherwise the function outputs a 0 if the player who used the move lost and their opponent did not use the move
stickystat <- function(stickyverdict, winlose) {
  if(is.na(stickyverdict)) {
    stickywin <- NA}
  if(stickyverdict="both") {
    stickywin <- NA}
  if(winlose==stickyverdict) {
    stickywin <- 1}
  else {stickywin <- 0}
  stickywin 
}

stickystat(winlose[i], stickyverdict[i])  
stickyout <- rep(NA, length(pages))
for(i in 1:length(pages)) {stickyout[i] <- stickystat(winlose[i], stickyverdict[i])} 
# whenever I use this code it just returns an "unexpected '}' in "}" error 
