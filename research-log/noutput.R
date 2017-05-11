options(max.print=1000000)
Outcome <- d2[,2]
Player <- d2[,3]
Rank <- d2[,4]
Battle_Length <- d2[,5]
Switches <- d2[,6]
Early_Stealth_Rock <- d2[,7]
Late_Stealth_Rock <- d2[,8]
Early_Spikes <- d2[,9]
Late_Spikes <- d2[,10]
Early_Toxic_Spikes <- d2[,11]
Late_Toxic_Spikes <- d2[,12]
Early_Sticky_Web <- d2[,13]
Late_Sticky_Web <- d2[,14]
# Defog <- d2[,15]
# Rapid_Spin <- d2[,16]
Dragon_Tail <- d2[,17]
Roar <- d2[,18]
Whirlwind  <- d2[,19]
Abomasnow <- d2[,20]
Absol<- d2[,21]
Accelgor<- d2[,22]
Aerodactyl<- d2[,23]
Aggron<- d2[,24]
Alakazam<- d2[,25]
Alomomola<- d2[,26]
Altaria<- d2[,27]
Ambipom<- d2[,28]
Amoonguss<- d2[,29]
Ampharos<- d2[,30]
Arbok<- d2[,31]
Arcanine<- d2[,32]
Archeops<- d2[,33]
Ariados<- d2[,34]
Armaldo<- d2[,35]
Aromatisse<- d2[,36]
Articuno<- d2[,37]
Audino<- d2[,38]
Aurorus<- d2[,39]
Avalugg<- d2[,40]
Azelf<- d2[,41]
Azumarill<- d2[,42]
Banette<- d2[,43]
Barbaracle<- d2[,44]
Basculin<- d2[,45]
Bastiodon<- d2[,46]
Beartic<- d2[,47]
Beautifly<- d2[,48]
Beedrill<- d2[,49]
Beheeyem<- d2[,50]
Bellossom<- d2[,51]
Bibarel<- d2[,52]
Bisharp<- d2[,53]
Blastoise<- d2[,54]
Blissey<- d2[,55]
Bouffalant<- d2[,56]
Braviary<- d2[,57]
Breloom<- d2[,58]
Bronzong<- d2[,59]
Butterfree<- d2[,60]
Cacturne<- d2[,61]
Camerupt<- d2[,62]
Carbink<- d2[,63]
Carnivine<- d2[,64]
Carracosta<- d2[,65]
Castform<- d2[,66]
Celebi<- d2[,67]
Chandelure<- d2[,68]
Chansey<- d2[,69]  
Charizard<- d2[,70]  
Chatot<- d2[,71]  
Cherrim<- d2[,72]  
Chesnaught<- d2[,73]  
Chimecho<- d2[,74]  
Cinccino<- d2[,75]  
Clawitzer<- d2[,76]  
Claydol<- d2[,77]  
Clefable<- d2[,78]  
Clefairy<- d2[,79]  
Cloyster<- d2[,80]  
Cobalion<- d2[,81]  
Cofagrigus<- d2[,82]  
Combusken<- d2[,83]  
Conkeldurr<- d2[,84]  
Corsola<- d2[,85]  
Cradily<- d2[,86]  
Crawdaunt<- d2[,87]  
Cresselia<- d2[,88]  
Crobat<- d2[,89]  
Crustle<- d2[,90]  
Cryogonal<- d2[,91]  
Darmanitan<- d2[,92]  
Dedenne<- d2[,93]  
Delcatty<- d2[,94]  
Delibird<- d2[,95]  
Delphox<- d2[,96]  
Dewgong<- d2[,97]  
Diancie<- d2[,98]  
Diggersby<- d2[,99]  
Ditto<- d2[,100]  
Dodrio<- d2[,101]  
Donphan<- d2[,102]  
Doublade<- d2[,103]  
Dragalge<- d2[,104]  
Dragonair<- d2[,105]  
Dragonite<- d2[,106]  
Drapion<- d2[,107]  
Drifblim<- d2[,108]  
Druddigon<- d2[,109]  
Dugtrio<- d2[,110]  
Dunsparce<- d2[,111]  
Duosion<- d2[,112]  
Durant<- d2[,113]  
Dusclops<- d2[,114]  
Dusknoir<- d2[,115]  
Dustox<- d2[,116]  
Eelektross<- d2[,117]  
Electivire<- d2[,118]  
Electrode<- d2[,119]  
Emboar<- d2[,120]  
Emolga<- d2[,121]  
Empoleon<- d2[,122]  
Entei<- d2[,123]  
Escavalier<- d2[,124]  
Espeon<- d2[,125]  
Excadrill<- d2[,126]  
Exeggutor<- d2[,127]  
Exploud<- d2[,128]  
Farfetchd<- d2[,129]  
Fearow<- d2[,130]  
Feraligatr<- d2[,131]  
Ferroseed<- d2[,132]  
Ferrothorn<- d2[,133]  
Flareon<- d2[,134]  
Fletchinder<- d2[,135]  
Floatzel<- d2[,136]  
Florges<- d2[,137]  
Flygon<- d2[,138]  
Forretress<- d2[,139]  
Fraxure<- d2[,140]  
Froslass<- d2[,141]  
Furfrou<- d2[,142]  
Furret<- d2[,143]  
Gabite<- d2[,144]  
Gallade<- d2[,145]  
Galvantula<- d2[,146]  
Garbodor<- d2[,147]  
Garchomp<- d2[,148]  
Gardevoir<- d2[,149]  
Gastrodon<- d2[,150]  
Gengar<- d2[,151]  
Gigalith<- d2[,152]  
Girafarig<- d2[,153]  
Glaceon<- d2[,154]  
Glalie<- d2[,155]  
Gligar<- d2[,156]  
Gliscor<- d2[,157]  
Gogoat<- d2[,158]  
Golbat<- d2[,159]  
Golduck<- d2[,160]  
Golem<- d2[,161]  
Golurk<- d2[,162]  
Goodra<- d2[,163]  
Gorebyss<- d2[,164]  
Gothitelle<- d2[,165]  
Gourgeist<- d2[,166]  
Granbull<- d2[,167]  
Grumpig<- d2[,168]  
Gurdurr<- d2[,169]  
Gyarados<- d2[,170]  
Hariyama<- d2[,171]  
Haunter<- d2[,172]  
Hawlucha<- d2[,173]  
Haxorus<- d2[,174]  
Heatmor<- d2[,175]  
Heatran<- d2[,176]  
Heliolisk<- d2[,177]  
Heracross<- d2[,178]  
Hippowdon<- d2[,179]  
Hitmonchan<- d2[,180]  
Hitmonlee<- d2[,181]  
Hitmontop<- d2[,182]  
Honchkrow<- d2[,183]  
Hoopa<- d2[,184]  
HoopaU<- d2[,185]  
Houndoom<- d2[,186]  
Huntail<- d2[,187]  
Hydreigon<- d2[,188]  
Hypno<- d2[,189]  
Illumise<- d2[,190]  
Infernape<- d2[,191]  
Jellicent<- d2[,192]  
Jirachi<- d2[,193]  
Jolteon<- d2[,194]  
Jumpluff<- d2[,195]  
Jynx<- d2[,196]  
Kabutops<- d2[,197]  
Kadabra<- d2[,198]  
Kangaskhan<- d2[,199]  
Kecleon<- d2[,200]  
Keldeo<- d2[,201]  
Kingdra<- d2[,202]  
Kingler<- d2[,203]  
Klang<- d2[,204]  
Klefki<- d2[,205]  
Klinklang<- d2[,206]  
Kricketune<- d2[,207]  
Krokorok<- d2[,208]  
Krookodile<- d2[,209]  
Kyurem<- d2[,210]  
KyuremB<- d2[,211]  
LandorusT<- d2[,212]  
Lanturn<- d2[,213]  
Lapras<- d2[,214]  
Latias<- d2[,215]  
Latios<- d2[,216]  
Leafeon<- d2[,217]  
Leavanny<- d2[,218]  
Ledian<- d2[,219]  
Lickilicky<- d2[,220]  
Liepard<- d2[,221]  
Lilligant<- d2[,222]  
Linoone<- d2[,223]  
Lopunny<- d2[,224]  
Lucario<- d2[,225]  
Ludicolo<- d2[,226]  
Lumineon<- d2[,227]  
Lunatone<- d2[,228]  
Luvdisc<- d2[,229]  
Luxray<- d2[,230]  
Machamp<- d2[,231]  
Machoke<- d2[,232]  
Magcargo<- d2[,233]  
Magmortar<- d2[,234]  
Magneton<- d2[,235]  
Magnezone<- d2[,236]  
Malamar<- d2[,237]  
Mamoswine<- d2[,238]  
Manaphy<- d2[,239]  
Mandibuzz<- d2[,240]  
Manectric<- d2[,241]  
Mantine<- d2[,242]  
Maractus<- d2[,243]  
Marowak<- d2[,244]  
Masquerain<- d2[,245]  
Mawile<- d2[,246]  
Medicham<- d2[,247]  
Meganium<- d2[,248]  
Meloetta<- d2[,249]  
Meowstic<- d2[,250]  
Mesprit<- d2[,251]  
Metagross<- d2[,252]  
Metang<- d2[,253]  
Mew<- d2[,254]  
Mienshao<- d2[,255]  
Mightyena<- d2[,256]  
Milotic<- d2[,257]  
Miltank<- d2[,258]  
Minun<- d2[,259]  
Misdreavus<- d2[,260]  
Mismagius<- d2[,261]  
Moltres<- d2[,262]  
Monferno<- d2[,263]  
Mothim<- d2[,264]  
MrMime<- d2[,265]  
Muk<- d2[,266]  
Murkrow<- d2[,267]  
Musharna<- d2[,268]  
Nidoking<- d2[,269]  
Nidoqueen<- d2[,270]  
Ninetales<- d2[,271]  
Ninjask<- d2[,272]  
Noctowl<- d2[,273]  
Noivern<- d2[,274]  
Octillery<- d2[,275]  
Omastar<- d2[,276]  
Pachirisu<- d2[,277]  
Pangoro<- d2[,278]  
Parasect<- d2[,279]  
Pawniard<- d2[,280]  
Pelipper<- d2[,281]  
Persian<- d2[,282]  
Phione<- d2[,283]  
Pidgeot<- d2[,284]  
Piloswine<- d2[,285]  
Pinsir<- d2[,286]  
Plusle<- d2[,287]  
Politoed<- d2[,288]  
Poliwrath<- d2[,289]  
PorygonZ<- d2[,290]  
Porygon2<- d2[,291]  
Primeape<- d2[,292]  
Prinplup<- d2[,293]  
Probopass<- d2[,294]  
Purugly<- d2[,295]  
Pyroar<- d2[,296]  
Quagsire<- d2[,297]  
Quilladin<- d2[,298]  
Qwilfish<- d2[,299]  
Raichu<- d2[,300]  
Raikou<- d2[,301]  
Rampardos<- d2[,302]  
Rapidash<- d2[,303]  
Raticate<- d2[,304]  
Regice<- d2[,305]  
Regigigas<- d2[,306]  
Regirock<- d2[,307]  
Registeel<- d2[,308]  
Relicanth<- d2[,309]  
Reuniclus<- d2[,310]  
Rhydon<- d2[,311]  
Rhyperior<- d2[,312]  
Roselia<- d2[,313]  
Roserade<- d2[,314]  
Rotom<- d2[,315]  
RotomC<- d2[,316]  
RotomF<- d2[,317]  
RotomH<- d2[,318]  
RotomS<- d2[,319]  
RotomW<- d2[,320]  
Sableye<- d2[,321]  
Salamence<- d2[,322]  
Samurott<- d2[,323]  
Sandslash<- d2[,324]  
Sawk<- d2[,325]  
Sawsbuck<- d2[,326]  
Sceptile<- d2[,327]  
Scizor<- d2[,328]  
Scolipede<- d2[,329]  
Scrafty<- d2[,330]  
Scyther<- d2[,331]  
Seaking<- d2[,332]  
Seismitoad<- d2[,333]  
Serperior<- d2[,334]  
Servine<- d2[,335]  
Seviper<- d2[,336]  
Sharpedo<- d2[,337]  
Shaymin<- d2[,338]  
Shedinja<- d2[,339]  
Shiftry<- d2[,340]  
Shuckle<- d2[,341]  
Sigilyph<- d2[,342]  
Simipour<- d2[,343]  
Simisage<- d2[,344]  
Simisear<- d2[,345]  
Skarmory<- d2[,346]  
Skuntank<- d2[,347]  
Slaking<- d2[,348]  
Slowbro<- d2[,349]  
Slowking<- d2[,350]  
Slurpuff<- d2[,351]  
Smeargle<- d2[,352]  
Sneasel<- d2[,353]  
Snorlax<- d2[,354]  
Solrock<- d2[,355]  
Spinda<- d2[,356]  
Spiritomb<- d2[,357]  
Stantler<- d2[,358]  
Staraptor<- d2[,359]  
Starmie<- d2[,360]  
Steelix<- d2[,361]  
Stoutland<- d2[,362]  
Stunfisk<- d2[,363]  
Sudowoodo<- d2[,364]  
Suicune<- d2[,365]  
Sunflora<- d2[,366]  
Swalot<- d2[,367]  
Swampert<- d2[,368]  
Swanna<- d2[,369]  
Swellow<- d2[,370]  
Swoobat<- d2[,371]  
Sylveon<- d2[,372]  
Talonflame<- d2[,373]  
Tangela<- d2[,374]  
Tangrowth<- d2[,375]  
Tauros<- d2[,376]  
Tentacruel<- d2[,377]  
Terrakion<- d2[,378]  
Throh<- d2[,379]  
Thundurus<- d2[,380]  
ThundurusT<- d2[,381]  
Togekiss<- d2[,382]  
Togetic<- d2[,383]  
Torkoal<- d2[,384]  
Tornadus<- d2[,385]  
TornadusT<- d2[,386]  
Torterra<- d2[,387]  
Toxicroak<- d2[,388]  
Trevenant<- d2[,389]  
Tropius<- d2[,390]  
Typhlosion<- d2[,391]  
Tyranitar<- d2[,392]  
Tyrantrum<- d2[,393]  
Umbreon<- d2[,394]  
Unfezant<- d2[,395]  
Unown<- d2[,396]  
Ursaring<- d2[,397]  
Uxie<- d2[,398]  
Vanilluxe<- d2[,399]  
Vaporeon<- d2[,400]  
Venomoth<- d2[,401]  
Venusaur<- d2[,402]  
Vespiquen<- d2[,403]  
Vibrava<- d2[,404]  
Victini<- d2[,405]  
Victreebel<- d2[,406]  
Vigoroth<- d2[,407]  
Vileplume<- d2[,408]  
Virizion<- d2[,409]  
Vivillon<- d2[,410]  
Volbeat<- d2[,411]  
Volcarona<- d2[,412]  
Vullaby<- d2[,413]  
Wailord<- d2[,414]  
Walrein<- d2[,415]  
Wartortle<- d2[,416]  
Watchog<- d2[,417]  
Weavile<- d2[,418]  
Weezing<- d2[,419]  
Whimsicott<- d2[,420]  
Whiscash<- d2[,421]  
Wigglytuff<- d2[,422]  
Wobbuffet<- d2[,423]  
Wormadam<- d2[,424]  
WormadamSandy<- d2[,425]  
WormadamTrash<- d2[,426]  
Xatu<- d2[,427]  
Yanmega<- d2[,428]  
Zangoose <- d2[,429]    
Zapdos<- d2[,430]
Zebstrika<- d2[,431]
Zoroark<- d2[,432]
Zweilous<- d2[,433]
Zygarde<- d2[,434]
Abomasite <- d2[,435]
Absolite <- d2[,436]
Aerodactylite <- d2[,437]
Aggronite <- d2[,438]
Alakazite <- d2[,439]
Altarianite <- d2[,440]
Ampharosite <- d2[,441]
Audinite <- d2[,442]
Banettite <- d2[,443]
Beedrillite <- d2[,444]
Blastoisinite <- d2[,445]
Cameruptite <- d2[,446]
Charizarditex <- d2[,447]
Charizarditey <- d2[,448]
Diancite <- d2[,449]
Galladite <- d2[,450] 
Garchompite <- d2[,451]
Gardevoirite <- d2[,452]
Glalitite <- d2[,453]
Gyaradosite <- d2[,454]
Heracronite <- d2[,455]
Houndoominite <- d2[,456]
Latiasite <- d2[,457]
Latiosite <- d2[,458]
Lopunnite <- d2[,459]
Manectite <- d2[,460]
Medichamite <- d2[,461]
Metagrossite <- d2[,462]
Pidgeotite <- d2[,463]
Pinsirite <- d2[,464]
Sablenite <- d2[,465]
Sceptilite <- d2[,466]
Scizorite <- d2[,467]
Sharpedonite <- d2[,468]
Slowbronite <- d2[,469]
Steelixite <- d2[,470]
Swampertite <- d2[,471]
Tyranitarite <- d2[,472]
Venusaurite <- d2[,473]  

estAerodactyl         <- Early_Stealth_Rock*Aerodactyl
estAggron           <- Early_Stealth_Rock*Aggron
estArcheops          <- Early_Stealth_Rock*Archeops       
estArmaldo           <- Early_Stealth_Rock*Armaldo
estAurorus           <- Early_Stealth_Rock*Aurorus
estAzelf              <- Early_Stealth_Rock*Azelf     
estBarbaracle          <- Early_Stealth_Rock*Barbaracle          
estBastiodon            <- Early_Stealth_Rock*Bastiodon          
estBibarel               <- Early_Stealth_Rock*Bibarel      
estBisharp                <- Early_Stealth_Rock*Bisharp      
estBlissey                 <- Early_Stealth_Rock*Blissey      
estBronzong                 <- Early_Stealth_Rock*Bronzong   
estCamerupt                  <- Early_Stealth_Rock*Camerupt    
estCarbink                    <- Early_Stealth_Rock*Carbink        
estCarracosta               <- Early_Stealth_Rock*Carracosta
estCelebi                    <- Early_Stealth_Rock*Celebi  
estChansey                    <- Early_Stealth_Rock*Chansey       
estClaydol                     <- Early_Stealth_Rock*Claydol
estClefable                     <- Early_Stealth_Rock*Clefable 
estClefairy                      <- Early_Stealth_Rock*Clefairy     
estCobalion                 <- Early_Stealth_Rock*Cobalion
estCorsola                   <- Early_Stealth_Rock*Corsola  
estCradily                    <- Early_Stealth_Rock*Cradily        
estCrustle                   <- Early_Stealth_Rock*Crustle
estDiancie                <- Early_Stealth_Rock*Diancie  
estDonphan                 <- Early_Stealth_Rock*Donphan           
estDruddigon                <- Early_Stealth_Rock*Druddigon
estDugtrio                   <- Early_Stealth_Rock*Dugtrio   
estDunsparce                  <- Early_Stealth_Rock*Dunsparce        
estEmpoleon                   <- Early_Stealth_Rock*Empoleon
estExcadrill                   <- Early_Stealth_Rock*Excadrill   
estFerroseed                    <- Early_Stealth_Rock*Ferroseed      
estFerrothorn                <- Early_Stealth_Rock*Ferrothorn
estForretress                 <- Early_Stealth_Rock*Forretress    
estGabite                      <- Early_Stealth_Rock*Gabite      
estGarchomp                  <- Early_Stealth_Rock*Garchomp
estGigalith                   <- Early_Stealth_Rock*Gigalith   
estGligar                      <- Early_Stealth_Rock*Gligar       
estGliscor                   <- Early_Stealth_Rock*Gliscor
estGolem                      <- Early_Stealth_Rock*Golem 
estGolurk                      <- Early_Stealth_Rock*Golurk       
estHeatran                    <- Early_Stealth_Rock*Heatran
estHippowdon                   <- Early_Stealth_Rock*Hippowdon   
estInfernape                    <- Early_Stealth_Rock*Infernape  
estJirachi                   <- Early_Stealth_Rock*Jirachi
estKabutops                   <- Early_Stealth_Rock*Kabutops   
estKecleon                     <- Early_Stealth_Rock*Kecleon       
estKrokorok                  <- Early_Stealth_Rock*Krokorok
estKrookodile                 <- Early_Stealth_Rock*Krookodile    
estLunatone                    <- Early_Stealth_Rock*Lunatone   
estMagcargo                <- Early_Stealth_Rock*Magcargo
estMamoswine                <- Early_Stealth_Rock*Mamoswine     
estMarowak                   <- Early_Stealth_Rock*Marowak         
estMawile                    <- Early_Stealth_Rock*Mawile
estMesprit                    <- Early_Stealth_Rock*Mesprit 
estMetagross                   <- Early_Stealth_Rock*Metagross   
estMetang                <- Early_Stealth_Rock*Metang
estMew                    <- Early_Stealth_Rock*Mew   
estMiltank                 <- Early_Stealth_Rock*Miltank          
estMonferno             <- Early_Stealth_Rock*Monferno
estNidoking              <- Early_Stealth_Rock*Nidoking         
estNidoqueen              <- Early_Stealth_Rock*Nidoqueen    
estOmastar                 <- Early_Stealth_Rock*Omastar   
estPawniard                 <- Early_Stealth_Rock*Pawniard      
estPiloswine                 <- Early_Stealth_Rock*Piloswine     
estPinsir                     <- Early_Stealth_Rock*Pinsir 
estPrinplup                    <- Early_Stealth_Rock*Prinplup   
estProbopass                    <- Early_Stealth_Rock*Probopass  
estRampardos                 <- Early_Stealth_Rock*Rampardos
estRegirock                   <- Early_Stealth_Rock*Regirock    
estRegisteel                   <- Early_Stealth_Rock*Registeel   
estRelicanth                  <- Early_Stealth_Rock*Relicanth
estRhydon                      <- Early_Stealth_Rock*Rhydon 
estRhyperior                    <- Early_Stealth_Rock*Rhyperior  
estSandslash                   <- Early_Stealth_Rock*Sandslash
estSeismitoad                    <- Early_Stealth_Rock*Seismitoad 
estShuckle                        <- Early_Stealth_Rock*Shuckle   
estSkarmory                 <- Early_Stealth_Rock*Skarmory
estSolrock                   <- Early_Stealth_Rock*Solrock    
estSteelix                    <- Early_Stealth_Rock*Steelix       
estStunfisk                    <- Early_Stealth_Rock*Stunfisk 
estSudowoodo                    <- Early_Stealth_Rock*Sudowoodo  
estSwampert                      <- Early_Stealth_Rock*Swampert     
estTerrakion                <- Early_Stealth_Rock*Terrakion
estTorkoal                   <- Early_Stealth_Rock*Torkoal    
estTorterra                   <- Early_Stealth_Rock*Torterra        
estTyranitar                <- Early_Stealth_Rock*Tyranitar
estTyrantrum                 <- Early_Stealth_Rock*Tyrantrum     
estUxie                       <- Early_Stealth_Rock*Uxie        
estWigglytuff               <- Early_Stealth_Rock*Wigglytuff
estWormadamSandy            <- Early_Stealth_Rock*WormadamSandy         
estWormadamTrash             <- Early_Stealth_Rock*WormadamTrash         
estWormadam     <- Early_Stealth_Rock*Wormadam

lstAerodactyl         <- Late_Stealth_Rock*Aerodactyl
lstAggron           <- Late_Stealth_Rock*Aggron
lstArcheops          <- Late_Stealth_Rock*Archeops       
lstArmaldo           <- Late_Stealth_Rock*Armaldo
lstAurorus           <- Late_Stealth_Rock*Aurorus
lstAzelf              <- Late_Stealth_Rock*Azelf     
lstBarbaracle          <- Late_Stealth_Rock*Barbaracle          
lstBastiodon            <- Late_Stealth_Rock*Bastiodon          
lstBibarel               <- Late_Stealth_Rock*Bibarel      
lstBisharp                <- Late_Stealth_Rock*Bisharp      
lstBlissey                 <- Late_Stealth_Rock*Blissey      
lstBronzong                 <- Late_Stealth_Rock*Bronzong   
lstCamerupt                  <- Late_Stealth_Rock*Camerupt    
lstCarbink                    <- Late_Stealth_Rock*Carbink        
lstCarracosta               <- Late_Stealth_Rock*Carracosta
lstCelebi                    <- Late_Stealth_Rock*Celebi  
lstChansey                    <- Late_Stealth_Rock*Chansey       
lstClaydol                     <- Late_Stealth_Rock*Claydol
lstClefable                     <- Late_Stealth_Rock*Clefable 
lstClefairy                      <- Late_Stealth_Rock*Clefairy     
lstCobalion                 <- Late_Stealth_Rock*Cobalion
lstCorsola                   <- Late_Stealth_Rock*Corsola  
lstCradily                    <- Late_Stealth_Rock*Cradily        
lstCrustle                   <- Late_Stealth_Rock*Crustle
lstDiancie                <- Late_Stealth_Rock*Diancie  
lstDonphan                 <- Late_Stealth_Rock*Donphan           
lstDruddigon                <- Late_Stealth_Rock*Druddigon
lstDugtrio                   <- Late_Stealth_Rock*Dugtrio   
lstDunsparce                  <- Late_Stealth_Rock*Dunsparce        
lstEmpoleon                   <- Late_Stealth_Rock*Empoleon
lstExcadrill                   <- Late_Stealth_Rock*Excadrill   
lstFerroseed                    <- Late_Stealth_Rock*Ferroseed      
lstFerrothorn                <- Late_Stealth_Rock*Ferrothorn
lstForretress                 <- Late_Stealth_Rock*Forretress    
lstGabite                      <- Late_Stealth_Rock*Gabite      
lstGarchomp                  <- Late_Stealth_Rock*Garchomp
lstGigalith                   <- Late_Stealth_Rock*Gigalith   
lstGligar                      <- Late_Stealth_Rock*Gligar       
lstGliscor                   <- Late_Stealth_Rock*Gliscor
lstGolem                      <- Late_Stealth_Rock*Golem 
lstGolurk                      <- Late_Stealth_Rock*Golurk       
lstHeatran                    <- Late_Stealth_Rock*Heatran
lstHippowdon                   <- Late_Stealth_Rock*Hippowdon   
lstInfernape                    <- Late_Stealth_Rock*Infernape  
lstJirachi                   <- Late_Stealth_Rock*Jirachi
lstKabutops                   <- Late_Stealth_Rock*Kabutops   
lstKecleon                     <- Late_Stealth_Rock*Kecleon       
lstKrokorok                  <- Late_Stealth_Rock*Krokorok
lstKrookodile                 <- Late_Stealth_Rock*Krookodile    
lstLunatone                    <- Late_Stealth_Rock*Lunatone   
lstMagcargo                <- Late_Stealth_Rock*Magcargo
lstMamoswine                <- Late_Stealth_Rock*Mamoswine     
lstMarowak                   <- Late_Stealth_Rock*Marowak         
lstMawile                    <- Late_Stealth_Rock*Mawile
lstMesprit                    <- Late_Stealth_Rock*Mesprit 
lstMetagross                   <- Late_Stealth_Rock*Metagross   
lstMetang                <- Late_Stealth_Rock*Metang
lstMew                    <- Late_Stealth_Rock*Mew   
lstMiltank                 <- Late_Stealth_Rock*Miltank          
lstMonferno             <- Late_Stealth_Rock*Monferno
lstNidoking              <- Late_Stealth_Rock*Nidoking         
lstNidoqueen              <- Late_Stealth_Rock*Nidoqueen    
lstOmastar                 <- Late_Stealth_Rock*Omastar   
lstPawniard                 <- Late_Stealth_Rock*Pawniard      
lstPiloswine                 <- Late_Stealth_Rock*Piloswine     
lstPinsir                     <- Late_Stealth_Rock*Pinsir 
lstPrinplup                    <- Late_Stealth_Rock*Prinplup   
lstProbopass                    <- Late_Stealth_Rock*Probopass  
lstRampardos                 <- Late_Stealth_Rock*Rampardos
lstRegirock                   <- Late_Stealth_Rock*Regirock    
lstRegisteel                   <- Late_Stealth_Rock*Registeel   
lstRelicanth                  <- Late_Stealth_Rock*Relicanth
lstRhydon                      <- Late_Stealth_Rock*Rhydon 
lstRhyperior                    <- Late_Stealth_Rock*Rhyperior  
lstSandslash                   <- Late_Stealth_Rock*Sandslash
lstSeismitoad                    <- Late_Stealth_Rock*Seismitoad 
lstShuckle                        <- Late_Stealth_Rock*Shuckle   
lstSkarmory                 <- Late_Stealth_Rock*Skarmory
lstSolrock                   <- Late_Stealth_Rock*Solrock    
lstSteelix                    <- Late_Stealth_Rock*Steelix       
lstStunfisk                    <- Late_Stealth_Rock*Stunfisk 
lstSudowoodo                    <- Late_Stealth_Rock*Sudowoodo  
lstSwampert                      <- Late_Stealth_Rock*Swampert     
lstTerrakion                <- Late_Stealth_Rock*Terrakion
lstTorkoal                   <- Late_Stealth_Rock*Torkoal    
lstTorterra                   <- Late_Stealth_Rock*Torterra        
lstTyranitar                <- Late_Stealth_Rock*Tyranitar
lstTyrantrum                 <- Late_Stealth_Rock*Tyrantrum     
lstUxie                       <- Late_Stealth_Rock*Uxie        
lstWigglytuff               <- Late_Stealth_Rock*Wigglytuff
lstWormadamSandy            <- Late_Stealth_Rock*WormadamSandy         
lstWormadamTrash             <- Late_Stealth_Rock*WormadamTrash         
lstWormadam     <- Late_Stealth_Rock*Wormadam

Early_Stealth_RockXEarly_Spikes <- Early_Stealth_Rock*Early_Spikes
Early_Stealth_RockXLate_Spikes <- Early_Stealth_Rock*Late_Spikes
Early_Stealth_RockXEarly_Sticky_Web <- Early_Stealth_Rock*Early_Sticky_Web
Early_Stealth_RockXLate_Sticky_Web <- Early_Stealth_Rock*Late_Sticky_Web
Early_Stealth_RockXEarly_Toxic_Spikes <- Early_Stealth_Rock*Early_Toxic_Spikes
Early_Stealth_RockXLate_Toxic_Spikes <- Early_Stealth_Rock*Late_Toxic_Spikes
Early_Stealth_RockXWhirlwind <- Early_Stealth_Rock*Whirlwind
Early_Stealth_RockXDragon_Tail <- Early_Stealth_Rock*Dragon_Tail
Early_Stealth_RockXRoar <- Early_Stealth_Rock*Roar

Late_Stealth_RockXEarly_Spikes <- Late_Stealth_Rock*Early_Spikes
Late_Stealth_RockXLate_Spikes <- Late_Stealth_Rock*Late_Spikes
Late_Stealth_RockXEarly_Sticky_Web <- Late_Stealth_Rock*Early_Sticky_Web
Late_Stealth_RockXLate_Sticky_Web <- Late_Stealth_Rock*Late_Sticky_Web
Late_Stealth_RockXEarly_Toxic_Spikes <- Late_Stealth_Rock*Early_Toxic_Spikes
Late_Stealth_RockXLate_Toxic_Spikes <- Late_Stealth_Rock*Late_Toxic_Spikes
Late_Stealth_RockXWhirlwind <- Late_Stealth_Rock*Whirlwind
Late_Stealth_RockXDragon_Tail <- Late_Stealth_Rock*Dragon_Tail
Late_Stealth_RockXRoar <- Late_Stealth_Rock*Roar

probit7 <- glm(Outcome ~ Early_Stealth_Rock + Late_Stealth_Rock + Early_Spikes + Late_Spikes + Early_Toxic_Spikes + Late_Toxic_Spikes + Early_Sticky_Web  + Late_Sticky_Web  +Dragon_Tail + Roar + Whirlwind, family=binomial(link="probit"), data=d2[which(d2$battle_length>0),])
probit8 <- glm(Outcome ~ Early_Stealth_Rock + Late_Stealth_Rock + Early_Spikes + Late_Spikes + Early_Toxic_Spikes + Late_Toxic_Spikes + Early_Sticky_Web  + Late_Sticky_Web + Dragon_Tail + Roar + Whirlwind + Early_Stealth_RockXEarly_Spikes +
                 Early_Stealth_RockXLate_Spikes +
                 Early_Stealth_RockXEarly_Sticky_Web +
                 Early_Stealth_RockXLate_Sticky_Web +
                 Early_Stealth_RockXEarly_Toxic_Spikes +
                 Early_Stealth_RockXLate_Toxic_Spikes +
                 Early_Stealth_RockXWhirlwind +
                 Early_Stealth_RockXDragon_Tail + 
                 Early_Stealth_RockXRoar +
                 Late_Stealth_RockXSpikes +
                 Late_Stealth_RockXSpikes +
                 Late_Stealth_RockXSticky_Web +
                 Late_Stealth_RockXSticky_Web +
                 Late_Stealth_RockXToxic_Spikes +
                 Late_Stealth_RockXToxic_Spikes + 
                 Late_Stealth_RockXWhirlwind +
                 Late_Stealth_RockXDragon_Tail + 
                 Late_Stealth_RockXRoar 
                 , family=binomial(link="probit"), data=d2[which(d2$battle_length>0),])

probit9 <- glm(Outcome ~ Early_Stealth_Rock + Late_Stealth_Rock + Early_Spikes + Late_Spikes + Early_Toxic_Spikes + Late_Toxic_Spikes + Early_Sticky_Web  + Late_Sticky_Web + Dragon_Tail + Roar + Whirlwind + Early_Stealth_RockXEarly_Spikes +
                 Early_Stealth_RockXLate_Spikes +
                 Early_Stealth_RockXEarly_Sticky_Web +
                 Early_Stealth_RockXLate_Sticky_Web +
                 Early_Stealth_RockXEarly_Toxic_Spikes +
                 Early_Stealth_RockXLate_Toxic_Spikes +
                 Early_Stealth_RockXWhirlwind +
                 Early_Stealth_RockXDragon_Tail + 
                 Early_Stealth_RockXRoar +
                 Late_Stealth_RockXSpikes +
                 Late_Stealth_RockXSpikes +
                 Late_Stealth_RockXSticky_Web +
                 Late_Stealth_RockXSticky_Web +
                 Late_Stealth_RockXToxic_Spikes +
                 Late_Stealth_RockXToxic_Spikes + 
                 Late_Stealth_RockXWhirlwind +
                 Late_Stealth_RockXDragon_Tail + 
                 Late_Stealth_RockXRoar +
                 Abomasnow+  
                 Absol+ 
                 Accelgor+ 
                 Aerodactyl+ 
                 Aggron+ 
                 Alakazam+ 
                 Alomomola+ 
                 Altaria+ 
                 Ambipom+ 
                 Amoonguss+ 
                 Ampharos+ 
                 Arbok+ 
                 Arcanine+ 
                 Archeops+ 
                 Ariados+ 
                 Armaldo+ 
                 Aromatisse+ 
                 Articuno+ 
                 Audino+ 
                 Aurorus+ 
                 Avalugg+ 
                 Azelf+ 
                 Azumarill+ 
                 Banette+ 
                 Barbaracle+ 
                 Basculin+ 
                 Bastiodon+ 
                 Beartic+ 
                 Beautifly+ 
                 Beedrill+ 
                 Beheeyem+ 
                 Bellossom+ 
                 Bibarel+ 
                 Bisharp+ 
                 Blastoise+ 
                 Blissey+ 
                 Bouffalant+ 
                 Braviary+ 
                 Breloom+ 
                 Bronzong+ 
                 Butterfree+ 
                 Cacturne+ 
                 Camerupt+ 
                 Carbink+ 
                 Carnivine+ 
                 Carracosta+ 
                 Castform+ 
                 Celebi+ 
                 Chandelure+ 
                 Chansey +  
                 Charizard +  
                 Chatot +  
                 Cherrim +  
                 Chesnaught +  
                 Chimecho +  
                 Cinccino +  
                 Clawitzer +  
                 Claydol +  
                 Clefable +  
                 Clefairy +  
                 Cloyster +  
                 Cobalion +  
                 Cofagrigus +  
                 Combusken +  
                 Conkeldurr +  
                 Corsola +  
                 Cradily +  
                 Crawdaunt +  
                 Cresselia +  
                 Crobat +  
                 Crustle +  
                 Cryogonal +  
                 Darmanitan +  
                 Dedenne +  
                 Delcatty +  
                 Delibird +  
                 Delphox +  
                 Dewgong +  
                 Diancie +  
                 Diggersby +  
                 Ditto +  
                 Dodrio +  
                 Donphan +  
                 Doublade +  
                 Dragalge +  
                 Dragonair +  
                 Dragonite +  
                 Drapion +  
                 Drifblim +  
                 Druddigon +  
                 Dugtrio +  
                 Dunsparce +  
                 Duosion +  
                 Durant +  
                 Dusclops +  
                 Dusknoir +  
                 Dustox +  
                 Eelektross +  
                 Electivire +  
                 Electrode +  
                 Emboar +  
                 Emolga +  
                 Empoleon +  
                 Entei +  
                 Escavalier +  
                 Espeon +  
                 Excadrill +  
                 Exeggutor +  
                 Exploud +  
                 Farfetchd +  
                 Fearow +  
                 Feraligatr +  
                 Ferroseed +  
                 Ferrothorn +  
                 Flareon +  
                 Fletchinder +  
                 Floatzel +  
                 Florges +  
                 Flygon +  
                 Forretress +  
                 Fraxure +  
                 Froslass +  
                 Furfrou +  
                 Furret +  
                 Gabite +  
                 Gallade +  
                 Galvantula +  
                 Garbodor +  
                 Garchomp +  
                 Gardevoir +  
                 Gastrodon +  
                 Gengar +  
                 Gigalith +  
                 Girafarig +  
                 Glaceon +  
                 Glalie +  
                 Gligar +  
                 Gliscor +  
                 Gogoat +  
                 Golbat +  
                 Golduck +  
                 Golem +  
                 Golurk +  
                 Goodra +  
                 Gorebyss +  
                 Gothitelle +  
                 Gourgeist +  
                 Granbull +  
                 Grumpig +  
                 Gurdurr +  
                 Gyarados +  
                 Hariyama +  
                 Haunter +  
                 Hawlucha +  
                 Haxorus +  
                 Heatmor +  
                 Heatran +  
                 Heliolisk +  
                 Heracross +  
                 Hippowdon +  
                 Hitmonchan +  
                 Hitmonlee +  
                 Hitmontop +  
                 Honchkrow +  
                 Hoopa +  
                 HoopaU +  
                 Houndoom +  
                 Huntail +  
                 Hydreigon +  
                 Hypno +  
                 Illumise +  
                 Infernape +  
                 Jellicent +  
                 Jirachi +  
                 Jolteon +  
                 Jumpluff +  
                 Jynx +  
                 Kabutops +  
                 Kadabra +  
                 Kangaskhan +  
                 Kecleon +  
                 Keldeo +  
                 Kingdra +  
                 Kingler +  
                 Klang +  
                 Klefki +  
                 Klinklang +  
                 Kricketune +  
                 Krokorok +  
                 Krookodile +  
                 Kyurem +  
                 KyuremB +  
                 LandorusT +  
                 Lanturn +  
                 Lapras +  
                 Latias +  
                 Latios +  
                 Leafeon +  
                 Leavanny +  
                 Ledian +  
                 Lickilicky +  
                 Liepard +  
                 Lilligant +  
                 Linoone +  
                 Lopunny +  
                 Lucario +  
                 Ludicolo +  
                 Lumineon +  
                 Lunatone +  
                 Luvdisc +  
                 Luxray +  
                 Machamp +  
                 Machoke +  
                 Magcargo +  
                 Magmortar +  
                 Magneton +  
                 Magnezone +  
                 Malamar +  
                 Mamoswine +  
                 Manaphy +  
                 Mandibuzz +  
                 Manectric +  
                 Mantine +  
                 Maractus +  
                 Marowak +  
                 Masquerain +  
                 Mawile +  
                 Medicham +  
                 Meganium +  
                 Meloetta +  
                 Meowstic +  
                 Mesprit +  
                 Metagross +  
                 Metang +  
                 Mew +  
                 Mienshao +  
                 Mightyena +  
                 Milotic +  
                 Miltank +  
                 Minun +  
                 Misdreavus +  
                 Mismagius +  
                 Moltres +  
                 Monferno +  
                 Mothim +  
                 MrMime +  
                 Muk +  
                 Murkrow +  
                 Musharna +  
                 Nidoking +  
                 Nidoqueen +  
                 Ninetales +  
                 Ninjask +  
                 Noctowl +  
                 Noivern +  
                 Octillery +  
                 Omastar +  
                 Pachirisu +  
                 Pangoro +  
                 Parasect +  
                 Pawniard +  
                 Pelipper +  
                 Persian +  
                 Phione +  
                 Pidgeot +  
                 Piloswine +  
                 Pinsir +  
                 Plusle +  
                 Politoed +  
                 Poliwrath +  
                 PorygonZ +  
                 Porygon2 +  
                 Primeape +  
                 Prinplup +  
                 Probopass +  
                 Purugly +  
                 Pyroar +  
                 Quagsire +  
                 Quilladin +  
                 Qwilfish +  
                 Raichu +  
                 Raikou +  
                 Rampardos +  
                 Rapidash +  
                 Raticate +  
                 Regice +  
                 Regigigas +  
                 Regirock +  
                 Registeel +  
                 Relicanth +  
                 Reuniclus +  
                 Rhydon +  
                 Rhyperior +  
                 Roselia +  
                 Roserade +  
                 Rotom +  
                 RotomC +  
                 RotomF +  
                 RotomH +  
                 RotomS +  
                 RotomW +  
                 Sableye +  
                 Salamence +  
                 Samurott +  
                 Sandslash +  
                 Sawk +  
                 Sawsbuck +  
                 Sceptile +  
                 Scizor +  
                 Scolipede +  
                 Scrafty +  
                 Scyther +  
                 Seaking +  
                 Seismitoad +  
                 Serperior +  
                 Servine +  
                 Seviper +  
                 Sharpedo +  
                 Shaymin +  
                 Shedinja +  
                 Shiftry +  
                 Shuckle +  
                 Sigilyph +  
                 Simipour +  
                 Simisage +  
                 Simisear +  
                 Skarmory +  
                 Skuntank +  
                 Slaking +  
                 Slowbro +  
                 Slowking +  
                 Slurpuff +  
                 Smeargle +  
                 Sneasel +  
                 Snorlax +  
                 Solrock +  
                 Spinda +  
                 Spiritomb +  
                 Stantler +  
                 Staraptor +  
                 Starmie +  
                 Steelix +  
                 Stoutland +  
                 Stunfisk +  
                 Sudowoodo +  
                 Suicune +  
                 Sunflora +  
                 Swalot +  
                 Swampert +  
                 Swanna +  
                 Swellow +  
                 Swoobat +  
                 Sylveon +  
                 Talonflame +  
                 Tangela +  
                 Tangrowth +  
                 Tauros +  
                 Tentacruel +  
                 Terrakion +  
                 Throh +  
                 Thundurus +  
                 ThundurusT +  
                 Togekiss +  
                 Togetic +  
                 Torkoal +  
                 Tornadus +  
                 TornadusT +  
                 Torterra +  
                 Toxicroak +  
                 Trevenant +  
                 Tropius +  
                 Typhlosion +  
                 Tyranitar +  
                 Tyrantrum +  
                 Umbreon +  
                 Unfezant +  
                 Unown +  
                 Ursaring +  
                 Uxie +  
                 Vanilluxe +  
                 Vaporeon +  
                 Venomoth +  
                 Venusaur +  
                 Vespiquen +  
                 Vibrava +  
                 Victini +  
                 Victreebel +  
                 Vigoroth +  
                 Vileplume +  
                 Virizion +  
                 Vivillon +  
                 Volbeat +  
                 Volcarona +  
                 Vullaby +  
                 Wailord +  
                 Walrein +  
                 Wartortle +  
                 Watchog +  
                 Weavile +  
                 Weezing +  
                 Whimsicott +  
                 Whiscash +  
                 Wigglytuff +  
                 Wobbuffet +  
                 Wormadam +  
                 WormadamSandy +  
                 WormadamTrash +  
                 Xatu +  
                 Yanmega +  
                 Zangoose+      
                 Zapdos +
                 Zebstrika+ 
                 Zoroark+ 
                 Zweilous+ 
                 Zygarde, family=binomial(link="probit"), data=d2[which(d2$battle_length>0),] )
probit10 <- glm(Outcome ~Early_Stealth_Rock + Late_Stealth_Rock + Early_Spikes + Late_Spikes + Early_Toxic_Spikes + Late_Toxic_Spikes + Early_Sticky_Web  + Late_Sticky_Web + Dragon_Tail + Roar + Whirlwind +  Early_Stealth_RockXEarly_Spikes +
                  Early_Stealth_RockXLate_Spikes +
                  Early_Stealth_RockXEarly_Sticky_Web +
                  Early_Stealth_RockXLate_Sticky_Web +
                  Early_Stealth_RockXEarly_Toxic_Spikes +
                  Early_Stealth_RockXLate_Toxic_Spikes +
                  Early_Stealth_RockXWhirlwind +
                  Early_Stealth_RockXDragon_Tail + 
                  Early_Stealth_RockXRoar +
                  Late_Stealth_RockXSpikes +
                  Late_Stealth_RockXSpikes +
                  Late_Stealth_RockXSticky_Web +
                  Late_Stealth_RockXSticky_Web +
                  Late_Stealth_RockXToxic_Spikes +
                  Late_Stealth_RockXToxic_Spikes + 
                  Late_Stealth_RockXWhirlwind +
                  Late_Stealth_RockXDragon_Tail + 
                  Late_Stealth_RockXRoar +
                 + Absolite
               +Aerodactylite
               +Aggronite
               +Alakazite
               +Altarianite
               +Ampharosite
               +Audinite
               +Banettite
               +Beedrillite
               +Blastoisinite
               +Cameruptite
               +Charizarditex
               +Charizarditey
               +Diancite
               +Galladite
               +Garchompite
               +Gardevoirite
               +Glalitite
               +Gyaradosite
               +Heracronite
               +Houndoominite
               +Latiasite
               +Latiosite
               +Lopunnite
               +Manectite
               +Medichamite
               +Metagrossite
               +Pidgeotite
               +Pinsirite
               +Sablenite
               +Sceptilite
               +Scizorite
               +Sharpedonite
               +Slowbronite
               +Steelixite
               +Swampertite
               +Tyranitarite
               +Venusaurite, family=binomial(link="probit"), data=d2[which(d2$battle_length>0),] )
probit11 <- glm(Outcome ~Early_Stealth_Rock + Late_Stealth_Rock + Early_Spikes + Late_Spikes + Early_Toxic_Spikes + Late_Toxic_Spikes + Early_Sticky_Web  + Late_Sticky_Web + Dragon_Tail + Roar + Whirlwind + Early_Stealth_RockXEarly_Spikes +
                  Early_Stealth_RockXLate_Spikes +
                  Early_Stealth_RockXEarly_Sticky_Web +
                  Early_Stealth_RockXLate_Sticky_Web +
                  Early_Stealth_RockXEarly_Toxic_Spikes +
                  Early_Stealth_RockXLate_Toxic_Spikes +
                  Early_Stealth_RockXWhirlwind +
                  Early_Stealth_RockXDragon_Tail + 
                  Early_Stealth_RockXRoar +
                  Late_Stealth_RockXSpikes +
                  Late_Stealth_RockXSpikes +
                  Late_Stealth_RockXSticky_Web +
                  Late_Stealth_RockXSticky_Web +
                  Late_Stealth_RockXToxic_Spikes +
                  Late_Stealth_RockXToxic_Spikes + 
                  Late_Stealth_RockXWhirlwind +
                  Late_Stealth_RockXDragon_Tail + 
                  Late_Stealth_RockXRoar +
                  Abomasnow+  
                 Absol+ 
                 Accelgor+ 
                 Aerodactyl+ 
                 Aggron+ 
                 Alakazam+ 
                 Alomomola+ 
                 Altaria+ 
                 Ambipom+ 
                 Amoonguss+ 
                 Ampharos+ 
                 Arbok+ 
                 Arcanine+ 
                 Archeops+ 
                 Ariados+ 
                 Armaldo+ 
                 Aromatisse+ 
                 Articuno+ 
                 Audino+ 
                 Aurorus+ 
                 Avalugg+ 
                 Azelf+ 
                 Azumarill+ 
                 Banette+ 
                 Barbaracle+ 
                 Basculin+ 
                 Bastiodon+ 
                 Beartic+ 
                 Beautifly+ 
                 Beedrill+ 
                 Beheeyem+ 
                 Bellossom+ 
                 Bibarel+ 
                 Bisharp+ 
                 Blastoise+ 
                 Blissey+ 
                 Bouffalant+ 
                 Braviary+ 
                 Breloom+ 
                 Bronzong+ 
                 Butterfree+ 
                 Cacturne+ 
                 Camerupt+ 
                 Carbink+ 
                 Carnivine+ 
                 Carracosta+ 
                 Castform+ 
                 Celebi+ 
                 Chandelure+ 
                 Chansey +  
                 Charizard +  
                 Chatot +  
                 Cherrim +  
                 Chesnaught +  
                 Chimecho +  
                 Cinccino +  
                 Clawitzer +  
                 Claydol +  
                 Clefable +  
                 Clefairy +  
                 Cloyster +  
                 Cobalion +  
                 Cofagrigus +  
                 Combusken +  
                 Conkeldurr +  
                 Corsola +  
                 Cradily +  
                 Crawdaunt +  
                 Cresselia +  
                 Crobat +  
                 Crustle +  
                 Cryogonal +  
                 Darmanitan +  
                 Dedenne +  
                 Delcatty +  
                 Delibird +  
                 Delphox +  
                 Dewgong +  
                 Diancie +  
                 Diggersby +  
                 Ditto +  
                 Dodrio +  
                 Donphan +  
                 Doublade +  
                 Dragalge +  
                 Dragonair +  
                 Dragonite +  
                 Drapion +  
                 Drifblim +  
                 Druddigon +  
                 Dugtrio +  
                 Dunsparce +  
                 Duosion +  
                 Durant +  
                 Dusclops +  
                 Dusknoir +  
                 Dustox +  
                 Eelektross +  
                 Electivire +  
                 Electrode +  
                 Emboar +  
                 Emolga +  
                 Empoleon +  
                 Entei +  
                 Escavalier +  
                 Espeon +  
                 Excadrill +  
                 Exeggutor +  
                 Exploud +  
                 Farfetchd +  
                 Fearow +  
                 Feraligatr +  
                 Ferroseed +  
                 Ferrothorn +  
                 Flareon +  
                 Fletchinder +  
                 Floatzel +  
                 Florges +  
                 Flygon +  
                 Forretress +  
                 Fraxure +  
                 Froslass +  
                 Furfrou +  
                 Furret +  
                 Gabite +  
                 Gallade +  
                 Galvantula +  
                 Garbodor +  
                 Garchomp +  
                 Gardevoir +  
                 Gastrodon +  
                 Gengar +  
                 Gigalith +  
                 Girafarig +  
                 Glaceon +  
                 Glalie +  
                 Gligar +  
                 Gliscor +  
                 Gogoat +  
                 Golbat +  
                 Golduck +  
                 Golem +  
                 Golurk +  
                 Goodra +  
                 Gorebyss +  
                 Gothitelle +  
                 Gourgeist +  
                 Granbull +  
                 Grumpig +  
                 Gurdurr +  
                 Gyarados +  
                 Hariyama +  
                 Haunter +  
                 Hawlucha +  
                 Haxorus +  
                 Heatmor +  
                 Heatran +  
                 Heliolisk +  
                 Heracross +  
                 Hippowdon +  
                 Hitmonchan +  
                 Hitmonlee +  
                 Hitmontop +  
                 Honchkrow +  
                 Hoopa +  
                 HoopaU +  
                 Houndoom +  
                 Huntail +  
                 Hydreigon +  
                 Hypno +  
                 Illumise +  
                 Infernape +  
                 Jellicent +  
                 Jirachi +  
                 Jolteon +  
                 Jumpluff +  
                 Jynx +  
                 Kabutops +  
                 Kadabra +  
                 Kangaskhan +  
                 Kecleon +  
                 Keldeo +  
                 Kingdra +  
                 Kingler +  
                 Klang +  
                 Klefki +  
                 Klinklang +  
                 Kricketune +  
                 Krokorok +  
                 Krookodile +  
                 Kyurem +  
                 KyuremB +  
                 LandorusT +  
                 Lanturn +  
                 Lapras +  
                 Latias +  
                 Latios +  
                 Leafeon +  
                 Leavanny +  
                 Ledian +  
                 Lickilicky +  
                 Liepard +  
                 Lilligant +  
                 Linoone +  
                 Lopunny +  
                 Lucario +  
                 Ludicolo +  
                 Lumineon +  
                 Lunatone +  
                 Luvdisc +  
                 Luxray +  
                 Machamp +  
                 Machoke +  
                 Magcargo +  
                 Magmortar +  
                 Magneton +  
                 Magnezone +  
                 Malamar +  
                 Mamoswine +  
                 Manaphy +  
                 Mandibuzz +  
                 Manectric +  
                 Mantine +  
                 Maractus +  
                 Marowak +  
                 Masquerain +  
                 Mawile +  
                 Medicham +  
                 Meganium +  
                 Meloetta +  
                 Meowstic +  
                 Mesprit +  
                 Metagross +  
                 Metang +  
                 Mew +  
                 Mienshao +  
                 Mightyena +  
                 Milotic +  
                 Miltank +  
                 Minun +  
                 Misdreavus +  
                 Mismagius +  
                 Moltres +  
                 Monferno +  
                 Mothim +  
                 MrMime +  
                 Muk +  
                 Murkrow +  
                 Musharna +  
                 Nidoking +  
                 Nidoqueen +  
                 Ninetales +  
                 Ninjask +  
                 Noctowl +  
                 Noivern +  
                 Octillery +  
                 Omastar +  
                 Pachirisu +  
                 Pangoro +  
                 Parasect +  
                 Pawniard +  
                 Pelipper +  
                 Persian +  
                 Phione +  
                 Pidgeot +  
                 Piloswine +  
                 Pinsir +  
                 Plusle +  
                 Politoed +  
                 Poliwrath +  
                 PorygonZ +  
                 Porygon2 +  
                 Primeape +  
                 Prinplup +  
                 Probopass +  
                 Purugly +  
                 Pyroar +  
                 Quagsire +  
                 Quilladin +  
                 Qwilfish +  
                 Raichu +  
                 Raikou +  
                 Rampardos +  
                 Rapidash +  
                 Raticate +  
                 Regice +  
                 Regigigas +  
                 Regirock +  
                 Registeel +  
                 Relicanth +  
                 Reuniclus +  
                 Rhydon +  
                 Rhyperior +  
                 Roselia +  
                 Roserade +  
                 Rotom +  
                 RotomC +  
                 RotomF +  
                 RotomH +  
                 RotomS +  
                 RotomW +  
                 Sableye +  
                 Salamence +  
                 Samurott +  
                 Sandslash +  
                 Sawk +  
                 Sawsbuck +  
                 Sceptile +  
                 Scizor +  
                 Scolipede +  
                 Scrafty +  
                 Scyther +  
                 Seaking +  
                 Seismitoad +  
                 Serperior +  
                 Servine +  
                 Seviper +  
                 Sharpedo +  
                 Shaymin +  
                 Shedinja +  
                 Shiftry +  
                 Shuckle +  
                 Sigilyph +  
                 Simipour +  
                 Simisage +  
                 Simisear +  
                 Skarmory +  
                 Skuntank +  
                 Slaking +  
                 Slowbro +  
                 Slowking +  
                 Slurpuff +  
                 Smeargle +  
                 Sneasel +  
                 Snorlax +  
                 Solrock +  
                 Spinda +  
                 Spiritomb +  
                 Stantler +  
                 Staraptor +  
                 Starmie +  
                 Steelix +  
                 Stoutland +  
                 Stunfisk +  
                 Sudowoodo +  
                 Suicune +  
                 Sunflora +  
                 Swalot +  
                 Swampert +  
                 Swanna +  
                 Swellow +  
                 Swoobat +  
                 Sylveon +  
                 Talonflame +  
                 Tangela +  
                 Tangrowth +  
                 Tauros +  
                 Tentacruel +  
                 Terrakion +  
                 Throh +  
                 Thundurus +  
                 ThundurusT +  
                 Togekiss +  
                 Togetic +  
                 Torkoal +  
                 Tornadus +  
                 TornadusT +  
                 Torterra +  
                 Toxicroak +  
                 Trevenant +  
                 Tropius +  
                 Typhlosion +  
                 Tyranitar +  
                 Tyrantrum +  
                 Umbreon +  
                 Unfezant +  
                 Unown +  
                 Ursaring +  
                 Uxie +  
                 Vanilluxe +  
                 Vaporeon +  
                 Venomoth +  
                 Venusaur +  
                 Vespiquen +  
                 Vibrava +  
                 Victini +  
                 Victreebel +  
                 Vigoroth +  
                 Vileplume +  
                 Virizion +  
                 Vivillon +  
                 Volbeat +  
                 Volcarona +  
                 Vullaby +  
                 Wailord +  
                 Walrein +  
                 Wartortle +  
                 Watchog +  
                 Weavile +  
                 Weezing +  
                 Whimsicott +  
                 Whiscash +  
                 Wigglytuff +  
                 Wobbuffet +  
                 Wormadam +  
                 WormadamSandy +  
                 WormadamTrash +  
                 Xatu +  
                 Yanmega +  
                 Zangoose+      
                 Zapdos +
                 Zebstrika+ 
                 Zoroark+ 
                 Zweilous+ 
                 Zygarde + 
                 Abomasite + 
                 + Absolite
               +Aerodactylite
               +Aggronite
               +Alakazite
               +Altarianite
               +Ampharosite
               +Audinite
               +Banettite
               +Beedrillite
               +Blastoisinite
               +Cameruptite
               +Charizarditex
               +Charizarditey
               +Diancite
               +Galladite
               +Garchompite
               +Gardevoirite
               +Glalitite
               +Gyaradosite
               +Heracronite
               +Houndoominite
               +Latiasite
               +Latiosite
               +Lopunnite
               +Manectite
               +Medichamite
               +Metagrossite
               +Pidgeotite
               +Pinsirite
               +Sablenite
               +Sceptilite
               +Scizorite
               +Sharpedonite
               +Slowbronite
               +Steelixite
               +Swampertite
               +Tyranitarite
               +Venusaurite, family=binomial(link="probit"), data=d2[which(d2$battle_length>0),] )
probit12 <- glm(Outcome ~ Early_Spikes + Late_Spikes + Early_Toxic_Spikes + Late_Toxic_Spikes + Early_Sticky_Web  + Late_Sticky_Web + Dragon_Tail + Roar + Whirlwind + Early_Stealth_RockXEarly_Spikes +
                  Early_Stealth_RockXLate_Spikes +
                  Early_Stealth_RockXEarly_Sticky_Web +
                  Early_Stealth_RockXLate_Sticky_Web +
                  Early_Stealth_RockXEarly_Toxic_Spikes +
                  Early_Stealth_RockXLate_Toxic_Spikes +
                  Early_Stealth_RockXWhirlwind +
                  Early_Stealth_RockXDragon_Tail + 
                  Early_Stealth_RockXRoar +
                  Late_Stealth_RockXSpikes +
                  Late_Stealth_RockXSpikes +
                  Late_Stealth_RockXSticky_Web +
                  Late_Stealth_RockXSticky_Web +
                  Late_Stealth_RockXToxic_Spikes +
                  Late_Stealth_RockXToxic_Spikes + 
                  Late_Stealth_RockXWhirlwind +
                  Late_Stealth_RockXDragon_Tail + 
                  Late_Stealth_RockXRoar +
                  stAerodactyl +
                 estAggron +
                 estArcheops+       
                 estArmaldo +
                 estAurorus +
                 estAzelf    +     
                 estBarbaracle+          
                 estBastiodon  +          
                 estBibarel     +      
                  estBisharp      +      
                  estBlissey       +       
                  estBronzong       +   
                  estCamerupt        +    
                  estCarbink          +        
                  estCarracosta     +
                  estCelebi          +  
                  estChansey          +       
                  estClaydol           +
                  estClefable           + 
                  estClefairy            +     
                  estCobalion       +
                  estCorsola         +  
                  estCradily          +        
                  estCrustle         +
                  estDiancie      +  
                  estDonphan       +           
                  estDruddigon      +
                  estDugtrio         +   
                  estDunsparce        +        
                  estEmpoleon         +
                  estExcadrill         +   
                  estFerroseed          +      
                  estFerrothorn      +
                  estForretress       +    
                  estGabite            +      
                  estGarchomp        +
                  estGigalith         +   
                  estGligar            +       
                  estGliscor         +
                  estGolem            + 
                  estGolurk            +       
                  estHeatran          +
                  estHippowdon         +   
                  estInfernape          +  
                  estJirachi         +
                  estKabutops         +   
                  estKecleon           +       
                  estKrokorok        +
                  estKrookodile       +    
                  estLunatone          +   
                  estMagcargo      +
                  estMamoswine      +     
                  estMarowak         +         
                  estMawile          +
                  estMesprit          + 
                  estMetagross         +   
                  estMetang      +
                  estMew          +   
                  estMiltank       +          
                  estMonferno   +
                  estNidoking    +         
                  estNidoqueen    +    
                  estOmastar       +   
                  estPawniard       +      
                  estPiloswine       +     
                  estPinsir           + 
                  estPrinplup          +   
                  estProbopass          +  
                  estRampardos       +
                  estRegirock         +    
                  estRegisteel         +   
                  estRelicanth        +
                  estRhydon            + 
                  estRhyperior          +  
                  estSandslash         +
                  estSeismitoad          + 
                  estShuckle              +   
                  estSkarmory       +
                  estSolrock         +    
                  estSteelix          +       
                  estStunfisk          + 
                  estSudowoodo          +  
                  estSwampert            +     
                  estTerrakion      +
                  estTorkoal         +    
                  estTorterra         +        
                  estTyranitar      +
                  estTyrantrum       +     
                  estUxie             +        
                  estWigglytuff     +
                  estWormadamSandy  +         
                  estWormadamTrash   +         
                  estWormadam +
                  lstAggron +
                  lstArcheops+       
                  lstArmaldo +
                  lstAurorus +
                  lstAzelf    +     
                  lstBarbaracle+          
                  lstBastiodon  +          
                  lstBibarel     +      
                  lstBisharp      +      
                  lstBlissey       +       
                  lstBronzong       +   
                  lstCamerupt        +    
                  lstCarbink          +        
                  lstCarracosta     +
                  lstCelebi          +  
                  lstChansey          +       
                  lstClaydol           +
                  lstClefable           + 
                  lstClefairy            +     
                  lstCobalion       +
                  lstCorsola         +  
                  lstCradily          +        
                  lstCrustle         +
                  lstDiancie      +  
                  lstDonphan       +           
                  lstDruddigon      +
                  lstDugtrio         +   
                  lstDunsparce        +        
                  lstEmpoleon         +
                  lstExcadrill         +   
                  lstFerroseed          +      
                  lstFerrothorn      +
                  lstForretress       +    
                  lstGabite            +      
                  lstGarchomp        +
                  lstGigalith         +   
                  lstGligar            +       
                  lstGliscor         +
                  lstGolem            + 
                  lstGolurk            +       
                  lstHeatran          +
                  lstHippowdon         +   
                  lstInfernape          +  
                  lstJirachi         +
                  lstKabutops         +   
                  lstKecleon           +       
                  lstKrokorok        +
                  lstKrookodile       +    
                  lstLunatone          +   
                  lstMagcargo      +
                  lstMamoswine      +     
                  lstMarowak         +         
                  lstMawile          +
                  lstMesprit          + 
                  lstMetagross         +   
                  lstMetang      +
                  lstMew          +   
                  lstMiltank       +          
                  lstMonferno   +
                  lstNidoking    +         
                  lstNidoqueen    +    
                  lstOmastar       +   
                  lstPawniard       +      
                  lstPiloswine       +     
                  lstPinsir           + 
                  lstPrinplup          +   
                  lstProbopass          +  
                  lstRampardos       +
                  lstRegirock         +    
                  lstRegisteel         +   
                  lstRelicanth        +
                  lstRhydon            + 
                  lstRhyperior          +  
                  lstSandslash         +
                  lstSeismitoad          + 
                  lstShuckle              +   
                  lstSkarmory       +
                  lstSolrock         +    
                  lstSteelix          +       
                  lstStunfisk          + 
                  lstSudowoodo          +  
                  lstSwampert            +     
                  lstTerrakion      +
                  lstTorkoal         +    
                  lstTorterra         +        
                  lstTyranitar      +
                  lstTyrantrum       +     
                  lstUxie             +        
                  lstWigglytuff     +
                  lstWormadamSandy  +         
                  lstWormadamTrash   +         
                  lstWormadam +
                 Abomasnow+  
                 Absol+ 
                 Accelgor+ 
                 Aerodactyl+ 
                 Aggron+ 
                 Alakazam+ 
                 Alomomola+ 
                 Altaria+ 
                 Ambipom+ 
                 Amoonguss+ 
                 Ampharos+ 
                 Arbok+ 
                 Arcanine+ 
                 Archeops+ 
                 Ariados+ 
                 Armaldo+ 
                 Aromatisse+ 
                 Articuno+ 
                 Audino+ 
                 Aurorus+ 
                 Avalugg+ 
                 Azelf+ 
                 Azumarill+ 
                 Banette+ 
                 Barbaracle+ 
                 Basculin+ 
                 Bastiodon+ 
                 Beartic+ 
                 Beautifly+ 
                 Beedrill+ 
                 Beheeyem+ 
                 Bellossom+ 
                 Bibarel+ 
                 Bisharp+ 
                 Blastoise+ 
                 Blissey+ 
                 Bouffalant+ 
                 Braviary+ 
                 Breloom+ 
                 Bronzong+ 
                 Butterfree+ 
                 Cacturne+ 
                 Camerupt+ 
                 Carbink+ 
                 Carnivine+ 
                 Carracosta+ 
                 Castform+ 
                 Celebi+ 
                 Chandelure+ 
                 Chansey +  
                 Charizard +  
                 Chatot +  
                 Cherrim +  
                 Chesnaught +  
                 Chimecho +  
                 Cinccino +  
                 Clawitzer +  
                 Claydol +  
                 Clefable +  
                 Clefairy +  
                 Cloyster +  
                 Cobalion +  
                 Cofagrigus +  
                 Combusken +  
                 Conkeldurr +  
                 Corsola +  
                 Cradily +  
                 Crawdaunt +  
                 Cresselia +  
                 Crobat +  
                 Crustle +  
                 Cryogonal +  
                 Darmanitan +  
                 Dedenne +  
                 Delcatty +  
                 Delibird +  
                 Delphox +  
                 Dewgong +  
                 Diancie +  
                 Diggersby +  
                 Ditto +  
                 Dodrio +  
                 Donphan +  
                 Doublade +  
                 Dragalge +  
                 Dragonair +  
                 Dragonite +  
                 Drapion +  
                 Drifblim +  
                 Druddigon +  
                 Dugtrio +  
                 Dunsparce +  
                 Duosion +  
                 Durant +  
                 Dusclops +  
                 Dusknoir +  
                 Dustox +  
                 Eelektross +  
                 Electivire +  
                 Electrode +  
                 Emboar +  
                 Emolga +  
                 Empoleon +  
                 Entei +  
                 Escavalier +  
                 Espeon +  
                 Excadrill +  
                 Exeggutor +  
                 Exploud +  
                 Farfetchd +  
                 Fearow +  
                 Feraligatr +  
                 Ferroseed +  
                 Ferrothorn +  
                 Flareon +  
                 Fletchinder +  
                 Floatzel +  
                 Florges +  
                 Flygon +  
                 Forretress +  
                 Fraxure +  
                 Froslass +  
                 Furfrou +  
                 Furret +  
                 Gabite +  
                 Gallade +  
                 Galvantula +  
                 Garbodor +  
                 Garchomp +  
                 Gardevoir +  
                 Gastrodon +  
                 Gengar +  
                 Gigalith +  
                 Girafarig +  
                 Glaceon +  
                 Glalie +  
                 Gligar +  
                 Gliscor +  
                 Gogoat +  
                 Golbat +  
                 Golduck +  
                 Golem +  
                 Golurk +  
                 Goodra +  
                 Gorebyss +  
                 Gothitelle +  
                 Gourgeist +  
                 Granbull +  
                 Grumpig +  
                 Gurdurr +  
                 Gyarados +  
                 Hariyama +  
                 Haunter +  
                 Hawlucha +  
                 Haxorus +  
                 Heatmor +  
                 Heatran +  
                 Heliolisk +  
                 Heracross +  
                 Hippowdon +  
                 Hitmonchan +  
                 Hitmonlee +  
                 Hitmontop +  
                 Honchkrow +  
                 Hoopa +  
                 HoopaU +  
                 Houndoom +  
                 Huntail +  
                 Hydreigon +  
                 Hypno +  
                 Illumise +  
                 Infernape +  
                 Jellicent +  
                 Jirachi +  
                 Jolteon +  
                 Jumpluff +  
                 Jynx +  
                 Kabutops +  
                 Kadabra +  
                 Kangaskhan +  
                 Kecleon +  
                 Keldeo +  
                 Kingdra +  
                 Kingler +  
                 Klang +  
                 Klefki +  
                 Klinklang +  
                 Kricketune +  
                 Krokorok +  
                 Krookodile +  
                 Kyurem +  
                 KyuremB +  
                 LandorusT +  
                 Lanturn +  
                 Lapras +  
                 Latias +  
                 Latios +  
                 Leafeon +  
                 Leavanny +  
                 Ledian +  
                 Lickilicky +  
                 Liepard +  
                 Lilligant +  
                 Linoone +  
                 Lopunny +  
                 Lucario +  
                 Ludicolo +  
                 Lumineon +  
                 Lunatone +  
                 Luvdisc +  
                 Luxray +  
                 Machamp +  
                 Machoke +  
                 Magcargo +  
                 Magmortar +  
                 Magneton +  
                 Magnezone +  
                 Malamar +  
                 Mamoswine +  
                 Manaphy +  
                 Mandibuzz +  
                 Manectric +  
                 Mantine +  
                 Maractus +  
                 Marowak +  
                 Masquerain +  
                 Mawile +  
                 Medicham +  
                 Meganium +  
                 Meloetta +  
                 Meowstic +  
                 Mesprit +  
                 Metagross +  
                 Metang +  
                 Mew +  
                 Mienshao +  
                 Mightyena +  
                 Milotic +  
                 Miltank +  
                 Minun +  
                 Misdreavus +  
                 Mismagius +  
                 Moltres +  
                 Monferno +  
                 Mothim +  
                 MrMime +  
                 Muk +  
                 Murkrow +  
                 Musharna +  
                 Nidoking +  
                 Nidoqueen +  
                 Ninetales +  
                 Ninjask +  
                 Noctowl +  
                 Noivern +  
                 Octillery +  
                 Omastar +  
                 Pachirisu +  
                 Pangoro +  
                 Parasect +  
                 Pawniard +  
                 Pelipper +  
                 Persian +  
                 Phione +  
                 Pidgeot +  
                 Piloswine +  
                 Pinsir +  
                 Plusle +  
                 Politoed +  
                 Poliwrath +  
                 PorygonZ +  
                 Porygon2 +  
                 Primeape +  
                 Prinplup +  
                 Probopass +  
                 Purugly +  
                 Pyroar +  
                 Quagsire +  
                 Quilladin +  
                 Qwilfish +  
                 Raichu +  
                 Raikou +  
                 Rampardos +  
                 Rapidash +  
                 Raticate +  
                 Regice +  
                 Regigigas +  
                 Regirock +  
                 Registeel +  
                 Relicanth +  
                 Reuniclus +  
                 Rhydon +  
                 Rhyperior +  
                 Roselia +  
                 Roserade +  
                 Rotom +  
                 RotomC +  
                 RotomF +  
                 RotomH +  
                 RotomS +  
                 RotomW +  
                 Sableye +  
                 Salamence +  
                 Samurott +  
                 Sandslash +  
                 Sawk +  
                 Sawsbuck +  
                 Sceptile +  
                 Scizor +  
                 Scolipede +  
                 Scrafty +  
                 Scyther +  
                 Seaking +  
                 Seismitoad +  
                 Serperior +  
                 Servine +  
                 Seviper +  
                 Sharpedo +  
                 Shaymin +  
                 Shedinja +  
                 Shiftry +  
                 Shuckle +  
                 Sigilyph +  
                 Simipour +  
                 Simisage +  
                 Simisear +  
                 Skarmory +  
                 Skuntank +  
                 Slaking +  
                 Slowbro +  
                 Slowking +  
                 Slurpuff +  
                 Smeargle +  
                 Sneasel +  
                 Snorlax +  
                 Solrock +  
                 Spinda +  
                 Spiritomb +  
                 Stantler +  
                 Staraptor +  
                 Starmie +  
                 Steelix +  
                 Stoutland +  
                 Stunfisk +  
                 Sudowoodo +  
                 Suicune +  
                 Sunflora +  
                 Swalot +  
                 Swampert +  
                 Swanna +  
                 Swellow +  
                 Swoobat +  
                 Sylveon +  
                 Talonflame +  
                 Tangela +  
                 Tangrowth +  
                 Tauros +  
                 Tentacruel +  
                 Terrakion +  
                 Throh +  
                 Thundurus +  
                 ThundurusT +  
                 Togekiss +  
                 Togetic +  
                 Torkoal +  
                 Tornadus +  
                 TornadusT +  
                 Torterra +  
                 Toxicroak +  
                 Trevenant +  
                 Tropius +  
                 Typhlosion +  
                 Tyranitar +  
                 Tyrantrum +  
                 Umbreon +  
                 Unfezant +  
                 Unown +  
                 Ursaring +  
                 Uxie +  
                 Vanilluxe +  
                 Vaporeon +  
                 Venomoth +  
                 Venusaur +  
                 Vespiquen +  
                 Vibrava +  
                 Victini +  
                 Victreebel +  
                 Vigoroth +  
                 Vileplume +  
                 Virizion +  
                 Vivillon +  
                 Volbeat +  
                 Volcarona +  
                 Vullaby +  
                 Wailord +  
                 Walrein +  
                 Wartortle +  
                 Watchog +  
                 Weavile +  
                 Weezing +  
                 Whimsicott +  
                 Whiscash +  
                 Wigglytuff +  
                 Wobbuffet +  
                 Wormadam +  
                 WormadamSandy +  
                 WormadamTrash +  
                 Xatu +  
                 Yanmega +  
                 Zangoose+      
                 Zapdos +
                 Zebstrika+ 
                 Zoroark+ 
                 Zweilous+ 
                 Zygarde + 
                 Abomasite + 
                 + Absolite
               +Aerodactylite
               +Aggronite
               +Alakazite
               +Altarianite
               +Ampharosite
               +Audinite
               +Banettite
               +Beedrillite
               +Blastoisinite
               +Cameruptite
               +Charizarditex
               +Charizarditey
               +Diancite
               +Galladite
               +Garchompite
               +Gardevoirite
               +Glalitite
               +Gyaradosite
               +Heracronite
               +Houndoominite
               +Latiasite
               +Latiosite
               +Lopunnite
               +Manectite
               +Medichamite
               +Metagrossite
               +Pidgeotite
               +Pinsirite
               +Sablenite
               +Sceptilite
               +Scizorite
               +Sharpedonite
               +Slowbronite
               +Steelixite
               +Swampertite
               +Tyranitarite
               +Venusaurite, family=binomial(link="probit"), data=d2[which(d2$battle_length>0),] )

library(readr)
write_rds(probit7, "probit7.rds")
write_rds(probit8, "probit8.rds")
write_rds(probit9, "probit9.rds")
write_rds(probit10, "probit10.rds")
write_rds(probit11, "probit11.rds")
write_rds(probit12, "probit12.rds")