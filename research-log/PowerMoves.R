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

# Fire Blast
firewinlose <- function(battlelog) {
  if((battlelog$endType) == "draw") {
    fblast <- NA
  }
  if(((any(grep("[|]Fire Blast[|]p1a", battlelog)) == TRUE)) & (any(grep("[|]Fire Blast[|]p2a", battlelog)) == TRUE)){
    fblast <- NA
  }
  if(any(grep("(Fire Blast[|]p1a) | (Fire Blast[|]p2a)", battlelog)) == FALSE) {
    fblast <- NA
  }
  if(((battlelog$p1rating$elo > battlelog$p1rating$oldelo) == TRUE) & (any(grep("[|]Fire Blast Web[|]p1a", battlelog)) == TRUE)){
    fblast <- 1
  }
  if(((battlelog$p2rating$elo > battlelog$p2rating$oldelo) == TRUE) & (any(grep("[|]Fire Blast[|]p2a", battlelog)) == TRUE)){
    fblast <- 1
  }
  if(((battlelog$p2rating$elo > battlelog$p2rating$oldelo) == TRUE) & (any(grep("[|]Fire Blast[|]p1a", battlelog)) == TRUE)){
    fblast <- 0
  }
  if(((battlelog$p1rating$elo > battlelog$p1rating$oldelo) == TRUE) & (any(grep("[|]Fire Blast[|]p2a", battlelog)) == TRUE)){
    fblast <- 0
  }
  fblast
}

winblast <- rep(NA, length(pages)) 
for(i in 1:length(pages)) { winblast[i] <- firewinlose(pages[[i]])}

