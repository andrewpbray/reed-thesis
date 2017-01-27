grab_comp <- function(battlelog){
  data.frame(pokemon=c(battlelog$p1team$species,battlelog$p2team$species), 
             item=c(battlelog$p1team$item, battlelog$p2team$item), 
             player=rep(1:2,each=6),)
}
grab_comp(pages[[i]])

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