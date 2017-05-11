filenames <- list.files()
library(jsonlite)
library(ggplot2)
pages <- list()
for(i in seq_along(filenames)) {
  mydata <- fromJSON(filenames[i], simplifyDataFrame = TRUE)
  pages[[i]] <- mydata
}

n <- length(pages)
toxsprost <- c("Ariados",    "Beedrill",   "Cloyster" ,  "Cofagrigus" ,"Dragalge" , 
               "Drapion",  "Forretress" ,"Garbodor" ,  "Omastar"  ,  "Qwilfish"  ,
               "Roselia" ,   "Scolipede" , "Tentacruel" ,"Venomoth" ,  "Weezing"
)
# 3 cases for each entry; either used(1), Pokémon present but move not used (0), or Pokémon not present (NA) 
# current coding appears somewhat inefficient 
# can I create code to go through each entry on the toxspike roster and go through the 3 cases? 

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
