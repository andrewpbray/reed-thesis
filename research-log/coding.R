# https://cran.r-project.org/web/packages/tidyjson/vignettes/introduction-to-tidyjson.html
# https://cran.r-project.org/web/packages/tidyjson/tidyjson.pdf
# https://cran.r-project.org/web/packages/jsonlite/vignettes/json-paging.html
# grab_comp <-
# Just for Sticky Web
# grep([|]Sticky Web[|]p1a"|"[|]Sticky Web[|]p2a",data1$log,value=TRUE)
# gregexpr(Sticky Web[|]p1a"|"Sticky Web[|]p2a",data1$log)
# any(grep("Sticky Web[|]p1a", data1$log)) 
# grep("[|]Sticky Web[|]p1a"|"[|]Sticky Web[|]p2a", data1$log) 
# For both Sticky Webs 
# any(grep("(Sticky Web[|]p1a)(Sticky Web[|]p2a)",data1$log))
# For p1 sticky
# 2 things: qualitative
# accompanying code 
any(grep("(Sticky Web[|]p1a)",data1$log))
# For p2 sticky
any(grep("(Sticky Web[|]p2a)",data1$log))


library(jsonlite)
# For test sample coding
# data1 <- fromJSON("battle-ou-302912470.log.json", simplifyDataFrame = TRUE)
# Cases: None, 1, 2, Both 
# Work in Progress 
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

# may not need this code: if((any(grep("[|]Sticky Web[|]p2a", data1$log))) == "TRUE") {print("P2")}} 
# verdict <- rep(NA, n) 
# for(i in 1:n) {verdict[i] <- stickreturn()} 
filenames <- list.files()

# this loops through all files in the directory, opening each and saving it as 
# an element of a list.
pages <- list()
for(i in seq_along(filenames)) {
  mydata <- fromJSON(filenames[i], simplifyDataFrame = TRUE)
  pages[[i]] <- mydata
}

turn_lengths <- rep(0, length(pages))
for(i in seq_along(pages)) {
  turn_lengths[i] <- pages[[i]]$turns
}

library(ggplot2)
d <- data.frame(turn_lengths)
ggplot(d, aes(x = turn_lengths)) + geom_histogram()

# New practice code 
# This code works 
p1rank <- rep(0, length(pages))
for(i in seq_along(pages)) {
 p1rank[i] <- pages[[i]]$p1rating$oldelo
}
p2rank <- rep(0, length(pages))
for(i in seq_along(pages)) {
p2rank[i] <- pages[[i]]$p2rating$oldelo
}
# Note: plrating$oldelo vs. p1rating$oldelo
# Note: Use oldelo coding
# Just the difference b/w player rankings 
abs(as.numeric(p1rank) - as.numeric(p2rank))
rankdif <- abs((as.numeric(p1rank) - as.numeric(p2rank)))
# Rank spread
rankspr <- abs((as.numeric(p1rank) + as.numeric(p2rank)))/2 


# Graph 
# two points are shown
plot(rankdif, rankspr)
plot(rankspr, rankdif)

# Player Team Composition
p1team <- mydata$p1team$species
p2team <- mydata$p2team$species
## rbind vs. merge
## merge takes two 6x1 matrices and returns a 36x2 matrix
## rbind returns the necessary data
## this data needs to be returned and iterated with whether the pokemon on the team lost the specific battle
rbind(data1$p1team$species,data1$p1team$item)
teamp2 <- rbind(data1$p2team$species,data1$p2team$item)
teamp1 <- rbind(data1$p1team$species,data1$p1team$item)
# need to merge teamp1 and teamp2
# should include battle outcome before merging? 
# want a 2x12 matrix...likely a 3x12 matrix to include outcome
# rbind(teamp1, teamp2) returns a 4x6 matrix
## the merge
# pokep1 <- data_frame(data1$p1team$species)
# pokep2 <- data_frame(data1$p2team$species)
# pokeitp1 <- data_frame(data1$p1team$item)
# pokeitp2 <- data_frame(data1$p2team$item)
# conciseteamp1 <- merge(pokep1, pokeitp1)
# conciseteamp2 <- merge(pokep2, pokeitp2)

## End game sorting
endType <- rep("", length(pages))
for(i in seq_along(pages)) {
  endType[i] <- pages[[i]]$endType
}
## End Type probability
# initial counting
endtypecount <- length(endType)
cendtypenormal <- length(which(endType== "normal"))
cendtypeforfeit <- length(which(endType== "forfeit"))
probendnormal <- cendtypenormal/endtypecount
probendforfeit <- cendtypeforfeit/endtypecount

## unique ids 
filenames <- list.files()
userids <- matrix(vector(mode = "character", length = length(filenames)*2), ncol = 2)
for(i in 1:length(filenames)) {
  mydata <- fromJSON(filenames[i], simplifyDataFrame = TRUE)
  userids[i, ] <- c(mydata$p1rating$userid, mydata$p2rating$userid)
}

userid <- unique(as.character(userids))

set.seed(502)
uid <- sample(100000:999999)[1:length(userid)]

lookup <- data.frame("userid" = userid,
                     "uid" = uid)
