options(max.print=1000000)
Outcome <- d1[,2]
Player <- d1[,3]
Rank <- d1[,4]
Battle_Length <- d1[,5]
Switches <- d1[,6]
Stealth_Rock <- d1[,7]
Spikes <- d1[,8]
Toxic_Spikes <- d1[,9]
Sticky_Web <- d1[,10]
# Defog <- d1[,11]
# Rapid_Spin <- d1[,12]
Dragon_Tail <- d1[,13]
Roar <- d1[,14]
Whirlwind  <- d1[,15]
Abomasnow <- d1[,16]
Absol<- d1[,17]
Accelgor<- d1[,18]
Aerodactyl<- d1[,19]
Aggron<- d1[,20]
Alakazam<- d1[,21]
Alomomola<- d1[,22]
Altaria<- d1[,23]
Ambipom<- d1[,24]
Amoonguss<- d1[,25]
Ampharos<- d1[,26]
Arbok<- d1[,27]
Arcanine<- d1[,28]
Archeops<- d1[,29]
Ariados<- d1[,30]
Armaldo<- d1[,31]
Aromatisse<- d1[,32]
Articuno<- d1[,33]
Audino<- d1[,34]
Aurorus<- d1[,35]
Avalugg<- d1[,36]
Azelf<- d1[,37]
Azumarill<- d1[,38]
Banette<- d1[,39]
Barbaracle<- d1[,40]
Basculin<- d1[,41]
Bastiodon<- d1[,42]
Beartic<- d1[,43]
Beautifly<- d1[,44]
Beedrill<- d1[,45]
Beheeyem<- d1[,46]
Bellossom<- d1[,47]
Bibarel<- d1[,48]
Bisharp<- d1[,49]
Blastoise<- d1[,50]
Blissey<- d1[,51]
Bouffalant<- d1[,52]
Braviary<- d1[,53]
Breloom<- d1[,54]
Bronzong<- d1[,55]
Butterfree<- d1[,56]
Cacturne<- d1[,57]
Camerupt<- d1[,58]
Carbink<- d1[,59]
Carnivine<- d1[,60]
Carracosta<- d1[,61]
Castform<- d1[,62]
Celebi<- d1[,63]
Chandelure<- d1[,64]
Chansey<- d1[,65]  
Charizard<- d1[,66]  
Chatot<- d1[,67]  
Cherrim<- d1[,68]  
Chesnaught<- d1[,69]  
Chimecho<- d1[,70]  
Cinccino<- d1[,71]  
Clawitzer<- d1[,72]  
Claydol<- d1[,73]  
Clefable<- d1[,74]  
Clefairy<- d1[,75]  
Cloyster<- d1[,76]  
Cobalion<- d1[,77]  
Cofagrigus<- d1[,78]  
Combusken<- d1[,79]  
Conkeldurr<- d1[,80]  
Corsola<- d1[,81]  
Cradily<- d1[,82]  
Crawdaunt<- d1[,83]  
Cresselia<- d1[,84]  
Crobat<- d1[,85]  
Crustle<- d1[,86]  
Cryogonal<- d1[,87]  
Darmanitan<- d1[,88]  
Dedenne<- d1[,89]  
Delcatty<- d1[,90]  
Delibird<- d1[,91]  
Delphox<- d1[,92]  
Dewgong<- d1[,93]  
Diancie<- d1[,94]  
Diggersby<- d1[,95]  
Ditto<- d1[,96]  
Dodrio<- d1[,97]  
Donphan<- d1[,98]  
Doublade<- d1[,99]  
Dragalge<- d1[,100]  
Dragonair<- d1[,101]  
Dragonite<- d1[,102]  
Drapion<- d1[,103]  
Drifblim<- d1[,104]  
Druddigon<- d1[,105]  
Dugtrio<- d1[,106]  
Dunsparce<- d1[,107]  
Duosion<- d1[,108]  
Durant<- d1[,109]  
Dusclops<- d1[,110]  
Dusknoir<- d1[,111]  
Dustox<- d1[,112]  
Eelektross<- d1[,113]  
Electivire<- d1[,114]  
Electrode<- d1[,115]  
Emboar<- d1[,116]  
Emolga<- d1[,117]  
Empoleon<- d1[,118]  
Entei<- d1[,119]  
Escavalier<- d1[,120]  
Espeon<- d1[,121]  
Excadrill<- d1[,122]  
Exeggutor<- d1[,123]  
Exploud<- d1[,124]  
Farfetchd<- d1[,125]  
Fearow<- d1[,126]  
Feraligatr<- d1[,127]  
Ferroseed<- d1[,128]  
Ferrothorn<- d1[,129]  
Flareon<- d1[,130]  
Fletchinder<- d1[,131]  
Floatzel<- d1[,132]  
Florges<- d1[,133]  
Flygon<- d1[,134]  
Forretress<- d1[,135]  
Fraxure<- d1[,136]  
Froslass<- d1[,137]  
Furfrou<- d1[,138]  
Furret<- d1[,139]  
Gabite<- d1[,140]  
Gallade<- d1[,141]  
Galvantula<- d1[,142]  
Garbodor<- d1[,143]  
Garchomp<- d1[,144]  
Gardevoir<- d1[,145]  
Gastrodon<- d1[,146]  
Gengar<- d1[,147]  
Gigalith<- d1[,148]  
Girafarig<- d1[,149]  
Glaceon<- d1[,150]  
Glalie<- d1[,151]  
Gligar<- d1[,152]  
Gliscor<- d1[,153]  
Gogoat<- d1[,154]  
Golbat<- d1[,155]  
Golduck<- d1[,156]  
Golem<- d1[,157]  
Golurk<- d1[,158]  
Goodra<- d1[,159]  
Gorebyss<- d1[,160]  
Gothitelle<- d1[,161]  
Gourgeist<- d1[,162]  
Granbull<- d1[,163]  
Grumpig<- d1[,164]  
Gurdurr<- d1[,165]  
Gyarados<- d1[,166]  
Hariyama<- d1[,167]  
Haunter<- d1[,168]  
Hawlucha<- d1[,169]  
Haxorus<- d1[,170]  
Heatmor<- d1[,171]  
Heatran<- d1[,172]  
Heliolisk<- d1[,173]  
Heracross<- d1[,174]  
Hippowdon<- d1[,175]  
Hitmonchan<- d1[,176]  
Hitmonlee<- d1[,177]  
Hitmontop<- d1[,178]  
Honchkrow<- d1[,179]  
Hoopa<- d1[,180]  
HoopaU<- d1[,181]  
Houndoom<- d1[,182]  
Huntail<- d1[,183]  
Hydreigon<- d1[,184]  
Hypno<- d1[,185]  
Illumise<- d1[,186]  
Infernape<- d1[,187]  
Jellicent<- d1[,188]  
Jirachi<- d1[,189]  
Jolteon<- d1[,190]  
Jumpluff<- d1[,191]  
Jynx<- d1[,192]  
Kabutops<- d1[,193]  
Kadabra<- d1[,194]  
Kangaskhan<- d1[,195]  
Kecleon<- d1[,196]  
Keldeo<- d1[,197]  
Kingdra<- d1[,198]  
Kingler<- d1[,199]  
Klang<- d1[,200]  
Klefki<- d1[,201]  
Klinklang<- d1[,202]  
Kricketune<- d1[,203]  
Krokorok<- d1[,204]  
Krookodile<- d1[,205]  
Kyurem<- d1[,206]  
KyuremB<- d1[,207]  
LandorusT<- d1[,208]  
Lanturn<- d1[,209]  
Lapras<- d1[,210]  
Latias<- d1[,211]  
Latios<- d1[,212]  
Leafeon<- d1[,213]  
Leavanny<- d1[,214]  
Ledian<- d1[,215]  
Lickilicky<- d1[,216]  
Liepard<- d1[,217]  
Lilligant<- d1[,218]  
Linoone<- d1[,219]  
Lopunny<- d1[,220]  
Lucario<- d1[,221]  
Ludicolo<- d1[,222]  
Lumineon<- d1[,223]  
Lunatone<- d1[,224]  
Luvdisc<- d1[,225]  
Luxray<- d1[,226]  
Machamp<- d1[,227]  
Machoke<- d1[,228]  
Magcargo<- d1[,229]  
Magmortar<- d1[,230]  
Magneton<- d1[,231]  
Magnezone<- d1[,232]  
Malamar<- d1[,233]  
Mamoswine<- d1[,234]  
Manaphy<- d1[,235]  
Mandibuzz<- d1[,236]  
Manectric<- d1[,237]  
Mantine<- d1[,238]  
Maractus<- d1[,239]  
Marowak<- d1[,240]  
Masquerain<- d1[,241]  
Mawile<- d1[,242]  
Medicham<- d1[,243]  
Meganium<- d1[,244]  
Meloetta<- d1[,245]  
Meowstic<- d1[,246]  
Mesprit<- d1[,247]  
Metagross<- d1[,248]  
Metang<- d1[,249]  
Mew<- d1[,250]  
Mienshao<- d1[,251]  
Mightyena<- d1[,252]  
Milotic<- d1[,253]  
Miltank<- d1[,254]  
Minun<- d1[,255]  
Misdreavus<- d1[,256]  
Mismagius<- d1[,257]  
Moltres<- d1[,258]  
Monferno<- d1[,259]  
Mothim<- d1[,260]  
MrMime<- d1[,261]  
Muk<- d1[,262]  
Murkrow<- d1[,263]  
Musharna<- d1[,264]  
Nidoking<- d1[,265]  
Nidoqueen<- d1[,266]  
Ninetales<- d1[,267]  
Ninjask<- d1[,268]  
Noctowl<- d1[,269]  
Noivern<- d1[,270]  
Octillery<- d1[,271]  
Omastar<- d1[,272]  
Pachirisu<- d1[,273]  
Pangoro<- d1[,274]  
Parasect<- d1[,275]  
Pawniard<- d1[,276]  
Pelipper<- d1[,277]  
Persian<- d1[,278]  
Phione<- d1[,279]  
Pidgeot<- d1[,280]  
Piloswine<- d1[,281]  
Pinsir<- d1[,282]  
Plusle<- d1[,283]  
Politoed<- d1[,284]  
Poliwrath<- d1[,285]  
PorygonZ<- d1[,286]  
Porygon2<- d1[,287]  
Primeape<- d1[,288]  
Prinplup<- d1[,289]  
Probopass<- d1[,290]  
Purugly<- d1[,291]  
Pyroar<- d1[,292]  
Quagsire<- d1[,293]  
Quilladin<- d1[,294]  
Qwilfish<- d1[,295]  
Raichu<- d1[,296]  
Raikou<- d1[,297]  
Rampardos<- d1[,298]  
Rapidash<- d1[,299]  
Raticate<- d1[,300]  
Regice<- d1[,301]  
Regigigas<- d1[,302]  
Regirock<- d1[,303]  
Registeel<- d1[,304]  
Relicanth<- d1[,305]  
Reuniclus<- d1[,306]  
Rhydon<- d1[,307]  
Rhyperior<- d1[,308]  
Roselia<- d1[,309]  
Roserade<- d1[,310]  
Rotom<- d1[,311]  
RotomC<- d1[,312]  
RotomF<- d1[,313]  
RotomH<- d1[,314]  
RotomS<- d1[,315]  
RotomW<- d1[,316]  
Sableye<- d1[,317]  
Salamence<- d1[,318]  
Samurott<- d1[,319]  
Sandslash<- d1[,320]  
Sawk<- d1[,321]  
Sawsbuck<- d1[,322]  
Sceptile<- d1[,323]  
Scizor<- d1[,324]  
Scolipede<- d1[,325]  
Scrafty<- d1[,326]  
Scyther<- d1[,327]  
Seaking<- d1[,328]  
Seismitoad<- d1[,329]  
Serperior<- d1[,330]  
Servine<- d1[,331]  
Seviper<- d1[,332]  
Sharpedo<- d1[,333]  
Shaymin<- d1[,334]  
Shedinja<- d1[,335]  
Shiftry<- d1[,336]  
Shuckle<- d1[,337]  
Sigilyph<- d1[,338]  
Simipour<- d1[,339]  
Simisage<- d1[,340]  
Simisear<- d1[,341]  
Skarmory<- d1[,342]  
Skuntank<- d1[,343]  
Slaking<- d1[,344]  
Slowbro<- d1[,345]  
Slowking<- d1[,346]  
Slurpuff<- d1[,347]  
Smeargle<- d1[,348]  
Sneasel<- d1[,349]  
Snorlax<- d1[,350]  
Solrock<- d1[,351]  
Spinda<- d1[,352]  
Spiritomb<- d1[,353]  
Stantler<- d1[,354]  
Staraptor<- d1[,355]  
Starmie<- d1[,356]  
Steelix<- d1[,357]  
Stoutland<- d1[,358]  
Stunfisk<- d1[,359]  
Sudowoodo<- d1[,360]  
Suicune<- d1[,361]  
Sunflora<- d1[,362]  
Swalot<- d1[,363]  
Swampert<- d1[,364]  
Swanna<- d1[,365]  
Swellow<- d1[,366]  
Swoobat<- d1[,367]  
Sylveon<- d1[,368]  
Talonflame<- d1[,369]  
Tangela<- d1[,370]  
Tangrowth<- d1[,371]  
Tauros<- d1[,372]  
Tentacruel<- d1[,373]  
Terrakion<- d1[,374]  
Throh<- d1[,375]  
Thundurus<- d1[,376]  
ThundurusT<- d1[,377]  
Togekiss<- d1[,378]  
Togetic<- d1[,379]  
Torkoal<- d1[,380]  
Tornadus<- d1[,381]  
TornadusT<- d1[,382]  
Torterra<- d1[,383]  
Toxicroak<- d1[,384]  
Trevenant<- d1[,385]  
Tropius<- d1[,386]  
Typhlosion<- d1[,387]  
Tyranitar<- d1[,388]  
Tyrantrum<- d1[,389]  
Umbreon<- d1[,390]  
Unfezant<- d1[,391]  
Unown<- d1[,392]  
Ursaring<- d1[,393]  
Uxie<- d1[,394]  
Vanilluxe<- d1[,395]  
Vaporeon<- d1[,396]  
Venomoth<- d1[,397]  
Venusaur<- d1[,398]  
Vespiquen<- d1[,399]  
Vibrava<- d1[,400]  
Victini<- d1[,401]  
Victreebel<- d1[,402]  
Vigoroth<- d1[,403]  
Vileplume<- d1[,404]  
Virizion<- d1[,405]  
Vivillon<- d1[,406]  
Volbeat<- d1[,407]  
Volcarona<- d1[,408]  
Vullaby<- d1[,409]  
Wailord<- d1[,410]  
Walrein<- d1[,411]  
Wartortle<- d1[,412]  
Watchog<- d1[,413]  
Weavile<- d1[,414]  
Weezing<- d1[,415]  
Whimsicott<- d1[,416]  
Whiscash<- d1[,417]  
Wigglytuff<- d1[,418]  
Wobbuffet<- d1[,419]  
Wormadam<- d1[,420]  
WormadamSandy<- d1[,421]  
WormadamTrash<- d1[,422]  
Xatu<- d1[,423]  
Yanmega<- d1[,424]  
Zangoose <- d1[,425]    
Zapdos<- d1[,426]
Zebstrika<- d1[,427]
Zoroark<- d1[,428]
Zweilous<- d1[,429]
Zygarde<- d1[,430]
Abomasite <- d1[,431]
Absolite <- d1[,431]
Aerodactylite <- d1[,432]
Aggronite <- d1[,433]
Alakazite <- d1[,434]
Altarianite <- d1[,435]
Ampharosite <- d1[,436]
Audinite <- d1[,437]
Banettite <- d1[,438]
Beedrillite <- d1[,439]
Blastoisinite <- d1[,441]
Cameruptite <- d1[,442]
Charizarditex <- d1[,443]
Charizarditey <- d1[,444]
Diancite <- d1[,445]
Galladite <- d1[,446] 
Garchompite <- d1[,447]
Gardevoirite <- d1[,448]
Glalitite <- d1[,449]
Gyaradosite <- d1[,450]
Heracronite <- d1[,451]
Houndoominite <- d1[,452]
Latiasite <- d1[,453]
Latiosite <- d1[,454]
Lopunnite <- d1[,455]
Manectite <- d1[,456]
Medichamite <- d1[,457]
Metagrossite <- d1[,458]
Pidgeotite <- d1[,459]
Pinsirite <- d1[,460]
Sablenite <- d1[,461]
Sceptilite <- d1[,462]
Scizorite <- d1[,463]
Sharpedonite <- d1[,464]
Slowbronite <- d1[,465]
Steelixite <- d1[,466]
Swampertite <- d1[,467]
Tyranitarite <- d1[,468]
Venusaurite <- d1[,469]  
stAerodactyl         <- Stealth_Rock*Aerodactyl
stAggron           <- Stealth_Rock*Aggron
stArcheops          <- Stealth_Rock*Archeops       
stArmaldo           <- Stealth_Rock*Armaldo
stAurorus           <- Stealth_Rock*Aurorus
stAzelf              <- Stealth_Rock*Azelf     
stBarbaracle          <- Stealth_Rock*Barbaracle          
stBastiodon            <- Stealth_Rock*Bastiodon          
stBibarel               <- Stealth_Rock*Bibarel      
stBisharp                <- Stealth_Rock*Bisharp      
stBlissey                 <- Stealth_Rock*Blissey      
stBronzong                 <- Stealth_Rock*Bronzong   
stCamerupt                  <- Stealth_Rock*Camerupt    
stCarbink                    <- Stealth_Rock*Carbink        
stCarracosta               <- Stealth_Rock*Carracosta
stCelebi                    <- Stealth_Rock*Celebi  
stChansey                    <- Stealth_Rock*Chansey       
stClaydol                     <- Stealth_Rock*Claydol
stClefable                     <- Stealth_Rock*Clefable 
stClefairy                      <- Stealth_Rock*Clefairy     
stCobalion                 <- Stealth_Rock*Cobalion
stCorsola                   <- Stealth_Rock*Corsola  
stCradily                    <- Stealth_Rock*Cradily        
stCrustle                   <- Stealth_Rock*Crustle
stDiancie                <- Stealth_Rock*Diancie  
stDonphan                 <- Stealth_Rock*Donphan           
stDruddigon                <- Stealth_Rock*Druddigon
stDugtrio                   <- Stealth_Rock*Dugtrio   
stDunsparce                  <- Stealth_Rock*Dunsparce        
stEmpoleon                   <- Stealth_Rock*Empoleon
stExcadrill                   <- Stealth_Rock*Excadrill   
stFerroseed                    <- Stealth_Rock*Ferroseed      
stFerrothorn                <- Stealth_Rock*Ferrothorn
stForretress                 <- Stealth_Rock*Forretress    
stGabite                      <- Stealth_Rock*Gabite      
stGarchomp                  <- Stealth_Rock*Garchomp
stGigalith                   <- Stealth_Rock*Gigalith   
stGligar                      <- Stealth_Rock*Gligar       
stGliscor                   <- Stealth_Rock*Gliscor
stGolem                      <- Stealth_Rock*Golem 
stGolurk                      <- Stealth_Rock*Golurk       
stHeatran                    <- Stealth_Rock*Heatran
stHippowdon                   <- Stealth_Rock*Hippowdon   
stInfernape                    <- Stealth_Rock*Infernape  
stJirachi                   <- Stealth_Rock*Jirachi
stKabutops                   <- Stealth_Rock*Kabutops   
stKecleon                     <- Stealth_Rock*Kecleon       
stKrokorok                  <- Stealth_Rock*Krokorok
stKrookodile                 <- Stealth_Rock*Krookodile    
stLunatone                    <- Stealth_Rock*Lunatone   
stMagcargo                <- Stealth_Rock*Magcargo
stMamoswine                <- Stealth_Rock*Mamoswine     
stMarowak                   <- Stealth_Rock*Marowak         
stMawile                    <- Stealth_Rock*Mawile
stMesprit                    <- Stealth_Rock*Mesprit 
stMetagross                   <- Stealth_Rock*Metagross   
stMetang                <- Stealth_Rock*Metang
stMew                    <- Stealth_Rock*Mew   
stMiltank                 <- Stealth_Rock*Miltank          
stMonferno             <- Stealth_Rock*Monferno
stNidoking              <- Stealth_Rock*Nidoking         
stNidoqueen              <- Stealth_Rock*Nidoqueen    
stOmastar                 <- Stealth_Rock*Omastar   
stPawniard                 <- Stealth_Rock*Pawniard      
stPiloswine                 <- Stealth_Rock*Piloswine     
stPinsir                     <- Stealth_Rock*Pinsir 
stPrinplup                    <- Stealth_Rock*Prinplup   
stProbopass                    <- Stealth_Rock*Probopass  
stRampardos                 <- Stealth_Rock*Rampardos
stRegirock                   <- Stealth_Rock*Regirock    
stRegisteel                   <- Stealth_Rock*Registeel   
stRelicanth                  <- Stealth_Rock*Relicanth
stRhydon                      <- Stealth_Rock*Rhydon 
stRhyperior                    <- Stealth_Rock*Rhyperior  
stSandslash                   <- Stealth_Rock*Sandslash
stSeismitoad                    <- Stealth_Rock*Seismitoad 
stShuckle                        <- Stealth_Rock*Shuckle   
stSkarmory                 <- Stealth_Rock*Skarmory
stSolrock                   <- Stealth_Rock*Solrock    
stSteelix                    <- Stealth_Rock*Steelix       
stStunfisk                    <- Stealth_Rock*Stunfisk 
stSudowoodo                    <- Stealth_Rock*Sudowoodo  
stSwampert                      <- Stealth_Rock*Swampert     
stTerrakion                <- Stealth_Rock*Terrakion
stTorkoal                   <- Stealth_Rock*Torkoal    
stTorterra                   <- Stealth_Rock*Torterra        
stTyranitar                <- Stealth_Rock*Tyranitar
stTyrantrum                 <- Stealth_Rock*Tyrantrum     
stUxie                       <- Stealth_Rock*Uxie        
stWigglytuff               <- Stealth_Rock*Wigglytuff
stWormadamSandy            <- Stealth_Rock*WormadamSandy         
stWormadamTrash             <- Stealth_Rock*WormadamTrash         
stWormadam     <- Stealth_Rock*Wormadam

Stealth_Rock_Spikes <- Stealth_Rock*Spikes
Stealth_Rock_Sticky_Web <- Stealth_Rock*Sticky_Web
Stealth_Rock_Toxic_Spikes <- Stealth_Rock*Toxic_Spikes
Stealth_Rock_Whirlwind <- Stealth_Rock*Whirlwind
Stealth_Rock_Dragon_Tail <- Stealth_Rock*Dragon_Tail
Stealth_Rock_Roar <- Stealth_Rock*Roar

probit1 <- glm(Outcome ~ Stealth_Rock + Spikes + Toxic_Spikes + Sticky_Web  + Dragon_Tail + Roar + Whirlwind, family=binomial(link="probit"), data=d1[which(d1$battle_length>0),])
probit2 <- glm(Outcome ~ Stealth_Rock + Spikes + Toxic_Spikes +  Sticky_Web + Whirlwind + Stealth_Rock_Spikes + Stealth_Rock_Sticky_Web + Stealth_Rock_Toxic_Spikes + Stealth_Rock_Whirlwind + Stealth_Rock_Dragon_Tail + Stealth_Rock_Roar , family=binomial(link="probit"), data=d1[which(d1$battle_length>0),])

probit3 <- glm(Outcome ~ Stealth_Rock + Spikes + Toxic_Spikes +  Sticky_Web + Dragon_Tail + Roar + Whirlwind + Stealth_Rock_Spikes + Stealth_Rock_Sticky_Web + Stealth_Rock_Toxic_Spikes + Stealth_Rock_Whirlwind + Stealth_Rock_Dragon_Tail + Stealth_Rock_Roar +
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
                 Zygarde, family=binomial(link="probit"), data=d1[which(d1$battle_length>0),] )
probit4 <- glm(Outcome ~Stealth_Rock + Spikes + Toxic_Spikes + Sticky_Web + Dragon_Tail + Roar + Whirlwind +  Stealth_Rock_Spikes + Stealth_Rock_Sticky_Web + Stealth_Rock_Toxic_Spikes + Stealth_Rock_Whirlwind + Stealth_Rock_Dragon_Tail + Stealth_Rock_Roar+
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
               +Venusaurite, family=binomial(link="probit"), data=d1[which(d1$battle_length>0),] )
probit5 <- glm(Outcome ~Stealth_Rock +  Spikes + Toxic_Spikes +  Sticky_Web  +  Dragon_Tail + Roar + Whirlwind + Stealth_Rock_Spikes + Stealth_Rock_Sticky_Web + Stealth_Rock_Toxic_Spikes + Stealth_Rock_Whirlwind + Stealth_Rock_Dragon_Tail + Stealth_Rock_Roar+Abomasnow+  
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
               +Venusaurite, family=binomial(link="probit"), data=d1[which(d1$battle_length>0),] )
probit6 <- glm(Outcome ~ Spikes + Toxic_Spikes +  Sticky_Web +  Dragon_Tail  + Roar + Whirlwind + Stealth_Rock_Spikes + Stealth_Rock_Sticky_Web + Stealth_Rock_Toxic_Spikes + Stealth_Rock_Whirlwind + Stealth_Rock_Dragon_Tail + Stealth_Rock_Roar+stAerodactyl +
                 stAggron +
                 stArcheops+       
                 stArmaldo +
                 stAurorus +
                 stAzelf    +     
                 stBarbaracle+          
                 stBastiodon  +          
                 stBibarel     +      
                 stBisharp      +      
                 stBlissey       +       
                 stBronzong       +   
                 stCamerupt        +    
                 stCarbink          +        
                 stCarracosta     +
                 stCelebi          +  
                 stChansey          +       
                 stClaydol           +
                 stClefable           + 
                 stClefairy            +     
                 stCobalion       +
                 stCorsola         +  
                 stCradily          +        
                 stCrustle         +
                 stDiancie      +  
                 stDonphan       +           
                 stDruddigon      +
                 stDugtrio         +   
                 stDunsparce        +        
                 stEmpoleon         +
                 stExcadrill         +   
                 stFerroseed          +      
                 stFerrothorn      +
                 stForretress       +    
                 stGabite            +      
                 stGarchomp        +
                 stGigalith         +   
                 stGligar            +       
                 stGliscor         +
                 stGolem            + 
                 stGolurk            +       
                 stHeatran          +
                 stHippowdon         +   
                 stInfernape          +  
                 stJirachi         +
                 stKabutops         +   
                 stKecleon           +       
                 stKrokorok        +
                 stKrookodile       +    
                 stLunatone          +   
                 stMagcargo      +
                 stMamoswine      +     
                 stMarowak         +         
                 stMawile          +
                 stMesprit          + 
                 stMetagross         +   
                 stMetang      +
                 stMew          +   
                 stMiltank       +          
                 stMonferno   +
                 stNidoking    +         
                 stNidoqueen    +    
                 stOmastar       +   
                 stPawniard       +      
                 stPiloswine       +     
                 stPinsir           + 
                 stPrinplup          +   
                 stProbopass          +  
                 stRampardos       +
                 stRegirock         +    
                 stRegisteel         +   
                 stRelicanth        +
                 stRhydon            + 
                 stRhyperior          +  
                 stSandslash         +
                 stSeismitoad          + 
                 stShuckle              +   
                 stSkarmory       +
                 stSolrock         +    
                 stSteelix          +       
                 stStunfisk          + 
                 stSudowoodo          +  
                 stSwampert            +     
                 stTerrakion      +
                 stTorkoal         +    
                 stTorterra         +        
                 stTyranitar      +
                 stTyrantrum       +     
                 stUxie             +        
                 stWigglytuff     +
                 stWormadamSandy  +         
                 stWormadamTrash   +         
                 stWormadam + Abomasnow+  
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
               +Venusaurite, family=binomial(link="probit"), data=d1[which(d1$battle_length>0),] )

library(readr)
write_rds(probit1, "probit1.rds")
write_rds(probit2, "probit2.rds")
write_rds(probit3, "probit3.rds")
write_rds(probit4, "probit4.rds")
write_rds(probit5, "probit5.rds")
write_rds(probit6, "probit6.rds")