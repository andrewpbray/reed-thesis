d2n <- d2[20:473]
d12n <- d12[20:473]
d6n <- d6[20:473]
# 12-25
save(d2n, file="d2n.Rda")
# 12-26
save(d12n, file="d12n.Rda")
# 12-27
save(d6n, file="d6n.Rda")
d21 <- cbind.data.frame(d2, d2n)
d41 <- cbind.data.frame(d4, d12n)
d61 <- cbind.data.frame(d6, d6n)

dc <- rbind.data.frame(d21, d41, d61)



load("ds.Rda")
summary1 <- ds[2]
summary2 <- ds[4:5]
sumsheet <- cbind.data.frame(summary1, summary2)
save(sumsheet, file="sumsheet.Rda")
Outcome <- sumsheet[,1]
Rank <- sumsheet[,2]
Battle_Length <- sumsheet[,3] 
moveset1 <- ds[6:10]
moveset2 <- ds[13:15]
load("dc.Rda")
nmoveset <- dc[7:14]
movesheet <- cbind.data.frame(moveset1, moveset2, movesheet)
save(movesheet, file="movesheet.Rda")
Circle_Throw <- movesheet[,1]
Stealth_Rock <- movesheet[,2]
Spikes <- movesheet[,3]
Toxic_Spikes <- movesheet[,4]
Sticky_Web <- movesheet[,5] 
Dragon_Tail <-movesheet[,6]
Roar <-movesheet[,7]
Whirlwind <-movesheet[,8]
Early_Stealth_Rock <-movesheet[,9]
Late_Stealth_Rock <-movesheet[,10]
Early_Spikes <-movesheet[,11]
Late_Spikes <-movesheet[,12]
Early_Toxic_Spikes <-movesheet[,13]
Late_Toxic_Spikes <-movesheet[,14]
Early_Sticky_Web  <-movesheet[,15]
Late_Sticky_Web  <-movesheet[,16]





