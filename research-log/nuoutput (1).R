options(max.print=1000000)
load("dcn.Rda") 

Outcome <- dcn[,2]
Player <- dcn[,3]
Rank <- dcn[,4]
Battle_Length <- dcn[,5]
Circle_Throw <- dcn[,6]
Early_Stealth_Rock <- dcn[,7]
Late_Stealth_Rock <- dcn[,8]
Early_Spikes <- dcn[,9]
Late_Spikes <- dcn[,10]
Early_Toxic_Spikes <- dcn[,11]
Late_Toxic_Spikes <- dcn[,12]
Early_Sticky_Web <- dcn[,13]
Late_Sticky_Web <- dcn[,14]
# Defog <- dcn[,15]
# Rapid_Spin <- dcn[,16]
Dragon_Tail <- dcn[,17]
Roar <- dcn[,18]
Early_Stealth_Rock2 <- Early_Stealth_Rock^2
Early_Spikes2 <- Early_Spikes^2
Early_Toxic_Spikes2 <- Early_Toxic_Spikes^2
Early_Sticky_Web2 <- Early_Sticky_Web^2
Late_Stealth_Rock2 <- Late_Stealth_Rock^2
Late_Spikes2 <- Late_Spikes^2
Late_Toxic_Spikes2 <- Late_Toxic_Spikes^2
Late_Sticky_Web2 <- Late_Sticky_Web^2
Whirlwind  <- dcn[,19]
Dragon_Tail2 <- Dragon_Tail^2
Roar2 <- Roar^2
Whirlwind2  <- Whirlwind^2
Circle_Throw2 <- Circle_Throw^2
Abomasnow <- dcn[,20]
Absol<- dcn[,21]
Accelgor<- dcn[,22]
Aerodactyl<- dcn[,23]
Aggron<- dcn[,24]
Alakazam<- dcn[,25]
Alomomola<- dcn[,26]
Altaria<- dcn[,27]
Ambipom<- dcn[,28]
Amoonguss<- dcn[,29]
Ampharos<- dcn[,30]
Arbok<- dcn[,31]
Arcanine<- dcn[,32]
Archeops<- dcn[,33]
Ariados<- dcn[,34]
Armaldo<- dcn[,35]
Aromatisse<- dcn[,36]
Articuno<- dcn[,37]
Audino<- dcn[,38]
Aurorus<- dcn[,39]
Avalugg<- dcn[,40]
Azelf<- dcn[,41]
Azumarill<- dcn[,42]
Banette<- dcn[,43]
Barbaracle<- dcn[,44]
Basculin<- dcn[,45]
Bastiodon<- dcn[,46]
Beartic<- dcn[,47]
Beautifly<- dcn[,48]
Beedrill<- dcn[,49]
Beheeyem<- dcn[,50]
Bellossom<- dcn[,51]
Bibarel<- dcn[,52]
Bisharp<- dcn[,53]
Blastoise<- dcn[,54]
Blissey<- dcn[,55]
Bouffalant<- dcn[,56]
Braviary<- dcn[,57]
Breloom<- dcn[,58]
Bronzong<- dcn[,59]
Butterfree<- dcn[,60]
Cacturne<- dcn[,61]
Camerupt<- dcn[,62]
Carbink<- dcn[,63]
Carnivine<- dcn[,64]
Carracosta<- dcn[,65]
Castform<- dcn[,66]
Celebi<- dcn[,67]
Chandelure<- dcn[,68]
Chansey<- dcn[,69]  
Charizard<- dcn[,70]  
Chatot<- dcn[,71]  
Cherrim<- dcn[,72]  
Chesnaught<- dcn[,73]  
Chimecho<- dcn[,74]  
Cinccino<- dcn[,75]  
Clawitzer<- dcn[,76]  
Claydol<- dcn[,77]  
Clefable<- dcn[,78]  
Clefairy<- dcn[,79]  
Cloyster<- dcn[,80]  
Cobalion<- dcn[,81]  
Cofagrigus<- dcn[,82]  
Combusken<- dcn[,83]  
Conkeldurr<- dcn[,84]  
Corsola<- dcn[,85]  
Cradily<- dcn[,86]  
Crawdaunt<- dcn[,87]  
Cresselia<- dcn[,88]  
Crobat<- dcn[,89]  
Crustle<- dcn[,90]  
Cryogonal<- dcn[,91]  
Darmanitan<- dcn[,92]  
Dedenne<- dcn[,93]  
Delcatty<- dcn[,94]  
Delibird<- dcn[,95]  
Delphox<- dcn[,96]  
Dewgong<- dcn[,97]  
Diancie<- dcn[,98]  
Diggersby<- dcn[,99]  
Ditto<- dcn[,100]  
Dodrio<- dcn[,101]  
Donphan<- dcn[,102]  
Doublade<- dcn[,103]  
Dragalge<- dcn[,104]  
Dragonair<- dcn[,105]  
Dragonite<- dcn[,106]  
Drapion<- dcn[,107]  
Drifblim<- dcn[,108]  
Druddigon<- dcn[,109]  
Dugtrio<- dcn[,110]  
Dunsparce<- dcn[,111]  
Duosion<- dcn[,112]  
Durant<- dcn[,113]  
Dusclops<- dcn[,114]  
Dusknoir<- dcn[,115]  
Dustox<- dcn[,116]  
Eelektross<- dcn[,117]  
Electivire<- dcn[,118]  
Electrode<- dcn[,119]  
Emboar<- dcn[,120]  
Emolga<- dcn[,121]  
Empoleon<- dcn[,122]  
Entei<- dcn[,123]  
Escavalier<- dcn[,124]  
Espeon<- dcn[,125]  
Excadrill<- dcn[,126]  
Exeggutor<- dcn[,127]  
Exploud<- dcn[,128]  
Farfetchd<- dcn[,129]  
Fearow<- dcn[,130]  
Feraligatr<- dcn[,131]  
Ferroseed<- dcn[,132]  
Ferrothorn<- dcn[,133]  
Flareon<- dcn[,134]  
Fletchinder<- dcn[,135]  
Floatzel<- dcn[,136]  
Florges<- dcn[,137]  
Flygon<- dcn[,138]  
Forretress<- dcn[,139]  
Fraxure<- dcn[,140]  
Froslass<- dcn[,141]  
Furfrou<- dcn[,142]  
Furret<- dcn[,143]  
Gabite<- dcn[,144]  
Gallade<- dcn[,145]  
Galvantula<- dcn[,146]  
Garbodor<- dcn[,147]  
Garchomp<- dcn[,148]  
Gardevoir<- dcn[,149]  
Gastrodon<- dcn[,150]  
Gengar<- dcn[,151]  
Gigalith<- dcn[,152]  
Girafarig<- dcn[,153]  
Glaceon<- dcn[,154]  
Glalie<- dcn[,155]  
Gligar<- dcn[,156]  
Gliscor<- dcn[,157]  
Gogoat<- dcn[,158]  
Golbat<- dcn[,159]  
Golduck<- dcn[,160]  
Golem<- dcn[,161]  
Golurk<- dcn[,162]  
Goodra<- dcn[,163]  
Gorebyss<- dcn[,164]  
Gothitelle<- dcn[,165]  
Gourgeist<- dcn[,166]  
Granbull<- dcn[,167]  
Grumpig<- dcn[,168]  
Gurdurr<- dcn[,169]  
Gyarados<- dcn[,170]  
Hariyama<- dcn[,171]  
Haunter<- dcn[,172]  
Hawlucha<- dcn[,173]  
Haxorus<- dcn[,174]  
Heatmor<- dcn[,175]  
Heatran<- dcn[,176]  
Heliolisk<- dcn[,177]  
Heracross<- dcn[,178]  
Hippowdon<- dcn[,179]  
Hitmonchan<- dcn[,180]  
Hitmonlee<- dcn[,181]  
Hitmontop<- dcn[,182]  
Honchkrow<- dcn[,183]  
Hoopa<- dcn[,184]  
HoopaU<- dcn[,185]  
Houndoom<- dcn[,186]  
Huntail<- dcn[,187]  
Hydreigon<- dcn[,188]  
Hypno<- dcn[,189]  
Illumise<- dcn[,190]  
Infernape<- dcn[,191]  
Jellicent<- dcn[,192]  
Jirachi<- dcn[,193]  
Jolteon<- dcn[,194]  
Jumpluff<- dcn[,195]  
Jynx<- dcn[,196]  
Kabutops<- dcn[,197]  
Kadabra<- dcn[,198]  
Kangaskhan<- dcn[,199]  
Kecleon<- dcn[,200]  
Keldeo<- dcn[,201]  
Kingdra<- dcn[,202]  
Kingler<- dcn[,203]  
Klang<- dcn[,204]  
Klefki<- dcn[,205]  
Klinklang<- dcn[,206]  
Kricketune<- dcn[,207]  
Krokorok<- dcn[,208]  
Krookodile<- dcn[,209]  
Kyurem<- dcn[,210]  
KyuremB<- dcn[,211]  
LandorusT<- dcn[,212]  
Lanturn<- dcn[,213]  
Lapras<- dcn[,214]  
Latias<- dcn[,215]  
Latios<- dcn[,216]  
Leafeon<- dcn[,217]  
Leavanny<- dcn[,218]  
Ledian<- dcn[,219]  
Lickilicky<- dcn[,220]  
Liepard<- dcn[,221]  
Lilligant<- dcn[,222]  
Linoone<- dcn[,223]  
Lopunny<- dcn[,224]  
Lucario<- dcn[,225]  
Ludicolo<- dcn[,226]  
Lumineon<- dcn[,227]  
Lunatone<- dcn[,228]  
Luvdisc<- dcn[,229]  
Luxray<- dcn[,230]  
Machamp<- dcn[,231]  
Machoke<- dcn[,232]  
Magcargo<- dcn[,233]  
Magmortar<- dcn[,234]  
Magneton<- dcn[,235]  
Magnezone<- dcn[,236]  
Malamar<- dcn[,237]  
Mamoswine<- dcn[,238]  
Manaphy<- dcn[,239]  
Mandibuzz<- dcn[,240]  
Manectric<- dcn[,241]  
Mantine<- dcn[,242]  
Maractus<- dcn[,243]  
Marowak<- dcn[,244]  
Masquerain<- dcn[,245]  
Mawile<- dcn[,246]  
Medicham<- dcn[,247]  
Meganium<- dcn[,248]  
Meloetta<- dcn[,249]  
Meowstic<- dcn[,250]  
Mesprit<- dcn[,251]  
Metagross<- dcn[,252]  
Metang<- dcn[,253]  
Mew<- dcn[,254]  
Mienshao<- dcn[,255]  
Mightyena<- dcn[,256]  
Milotic<- dcn[,257]  
Miltank<- dcn[,258]  
Minun<- dcn[,259]  
Misdreavus<- dcn[,260]  
Mismagius<- dcn[,261]  
Moltres<- dcn[,262]  
Monferno<- dcn[,263]  
Mothim<- dcn[,264]  
MrMime<- dcn[,265]  
Muk<- dcn[,266]  
Murkrow<- dcn[,267]  
Musharna<- dcn[,268]  
Nidoking<- dcn[,269]  
Nidoqueen<- dcn[,270]  
Ninetales<- dcn[,271]  
Ninjask<- dcn[,272]  
Noctowl<- dcn[,273]  
Noivern<- dcn[,274]  
Octillery<- dcn[,275]  
Omastar<- dcn[,276]  
Pachirisu<- dcn[,277]  
Pangoro<- dcn[,278]  
Parasect<- dcn[,279]  
Pawniard<- dcn[,280]  
Pelipper<- dcn[,281]  
Persian<- dcn[,282]  
Phione<- dcn[,283]  
Pidgeot<- dcn[,284]  
Piloswine<- dcn[,285]  
Pinsir<- dcn[,286]  
Plusle<- dcn[,287]  
Politoed<- dcn[,288]  
Poliwrath<- dcn[,289]  
PorygonZ<- dcn[,290]  
Porygon2<- dcn[,291]  
Primeape<- dcn[,292]  
Prinplup<- dcn[,293]  
Probopass<- dcn[,294]  
Purugly<- dcn[,295]  
Pyroar<- dcn[,296]  
Quagsire<- dcn[,297]  
Quilladin<- dcn[,298]  
Qwilfish<- dcn[,299]  
Raichu<- dcn[,300]  
Raikou<- dcn[,301]  
Rampardos<- dcn[,302]  
Rapidash<- dcn[,303]  
Raticate<- dcn[,304]  
Regice<- dcn[,305]  
Regigigas<- dcn[,306]  
Regirock<- dcn[,307]  
Registeel<- dcn[,308]  
Relicanth<- dcn[,309]  
Reuniclus<- dcn[,310]  
Rhydon<- dcn[,311]  
Rhyperior<- dcn[,312]  
Roselia<- dcn[,313]  
Roserade<- dcn[,314]  
Rotom<- dcn[,315]  
RotomC<- dcn[,316]  
RotomF<- dcn[,317]  
RotomH<- dcn[,318]  
RotomS<- dcn[,319]  
RotomW<- dcn[,320]  
Sableye<- dcn[,321]  
Salamence<- dcn[,322]  
Samurott<- dcn[,323]  
Sandslash<- dcn[,324]  
Sawk<- dcn[,325]  
Sawsbuck<- dcn[,326]  
Sceptile<- dcn[,327]  
Scizor<- dcn[,328]  
Scolipede<- dcn[,329]  
Scrafty<- dcn[,330]  
Scyther<- dcn[,331]  
Seaking<- dcn[,332]  
Seismitoad<- dcn[,333]  
Serperior<- dcn[,334]  
Servine<- dcn[,335]  
Seviper<- dcn[,336]  
Sharpedo<- dcn[,337]  
Shaymin<- dcn[,338]  
Shedinja<- dcn[,339]  
Shiftry<- dcn[,340]  
Shuckle<- dcn[,341]  
Sigilyph<- dcn[,342]  
Simipour<- dcn[,343]  
Simisage<- dcn[,344]  
Simisear<- dcn[,345]  
Skarmory<- dcn[,346]  
Skuntank<- dcn[,347]  
Slaking<- dcn[,348]  
Slowbro<- dcn[,349]  
Slowking<- dcn[,350]  
Slurpuff<- dcn[,351]  
Smeargle<- dcn[,352]  
Sneasel<- dcn[,353]  
Snorlax<- dcn[,354]  
Solrock<- dcn[,355]  
Spinda<- dcn[,356]  
Spiritomb<- dcn[,357]  
Stantler<- dcn[,358]  
Staraptor<- dcn[,359]  
Starmie<- dcn[,360]  
Steelix<- dcn[,361]  
Stoutland<- dcn[,362]  
Stunfisk<- dcn[,363]  
Sudowoodo<- dcn[,364]  
Suicune<- dcn[,365]  
Sunflora<- dcn[,366]  
Swalot<- dcn[,367]  
Swampert<- dcn[,368]  
Swanna<- dcn[,369]  
Swellow<- dcn[,370]  
Swoobat<- dcn[,371]  
Sylveon<- dcn[,372]  
Talonflame<- dcn[,373]  
Tangela<- dcn[,374]  
Tangrowth<- dcn[,375]  
Tauros<- dcn[,376]  
Tentacruel<- dcn[,377]  
Terrakion<- dcn[,378]  
Throh<- dcn[,379]  
Thundurus<- dcn[,380]  
ThundurusT<- dcn[,381]  
Togekiss<- dcn[,382]  
Togetic<- dcn[,383]  
Torkoal<- dcn[,384]  
Tornadus<- dcn[,385]  
TornadusT<- dcn[,386]  
Torterra<- dcn[,387]  
Toxicroak<- dcn[,388]  
Trevenant<- dcn[,389]  
Tropius<- dcn[,390]  
Typhlosion<- dcn[,391]  
Tyranitar<- dcn[,392]  
Tyrantrum<- dcn[,393]  
Umbreon<- dcn[,394]  
Unfezant<- dcn[,395]  
Unown<- dcn[,396]  
Ursaring<- dcn[,397]  
Uxie<- dcn[,398]  
Vanilluxe<- dcn[,399]  
Vaporeon<- dcn[,400]  
Venomoth<- dcn[,401]  
Venusaur<- dcn[,402]  
Vespiquen<- dcn[,403]  
Vibrava<- dcn[,404]  
Victini<- dcn[,405]  
Victreebel<- dcn[,406]  
Vigoroth<- dcn[,407]  
Vileplume<- dcn[,408]  
Virizion<- dcn[,409]  
Vivillon<- dcn[,410]  
Volbeat<- dcn[,411]  
Volcarona<- dcn[,412]  
Vullaby<- dcn[,413]  
Wailord<- dcn[,414]  
Walrein<- dcn[,415]  
Wartortle<- dcn[,416]  
Watchog<- dcn[,417]  
Weavile<- dcn[,418]  
Weezing<- dcn[,419]  
Whimsicott<- dcn[,420]  
Whiscash<- dcn[,421]  
Wigglytuff<- dcn[,422]  
Wobbuffet<- dcn[,423]  
Wormadam<- dcn[,424]  
WormadamSandy<- dcn[,425]  
WormadamTrash<- dcn[,426]  
Xatu<- dcn[,427]  
Yanmega<- dcn[,428]  
Zangoose <- dcn[,429]    
Zapdos<- dcn[,430]
Zebstrika<- dcn[,431]
Zoroark<- dcn[,432]
Zweilous<- dcn[,433]
Zygarde<- dcn[,434]
Abomasite <- dcn[,435]
Absolite <- dcn[,436]
Aerodactylite <- dcn[,437]
Aggronite <- dcn[,438]
Alakazite <- dcn[,439]
Altarianite <- dcn[,440]
Ampharosite <- dcn[,441]
Audinite <- dcn[,442]
Banettite <- dcn[,443]
Beedrillite <- dcn[,444]
Blastoisinite <- dcn[,445]
Cameruptite <- dcn[,446]
Charizarditex <- dcn[,447]
Charizarditey <- dcn[,448]
Diancite <- dcn[,449]
Galladite <- dcn[,450] 
Garchompite <- dcn[,451]
Gardevoirite <- dcn[,452]
Glalitite <- dcn[,453]
Gyaradosite <- dcn[,454]
Heracronite <- dcn[,455]
Houndoominite <- dcn[,456]
Latiasite <- dcn[,457]
Latiosite <- dcn[,458]
Lopunnite <- dcn[,459]
Manectite <- dcn[,460]
Medichamite <- dcn[,461]
Metagrossite <- dcn[,462]
Pidgeotite <- dcn[,463]
Pinsirite <- dcn[,464]
Sablenite <- dcn[,465]
Sceptilite <- dcn[,466]
Scizorite <- dcn[,467]
Sharpedonite <- dcn[,468]
Slowbronite <- dcn[,469]
Steelixite <- dcn[,470]
Swampertite <- dcn[,471]
Tyranitarite <- dcn[,472]
Venusaurite <- dcn[,473]  

Early_Stealth_RockXEarly_Spikes <- Early_Stealth_Rock*Early_Spikes
Early_Stealth_RockXLate_Spikes <- Early_Stealth_Rock*Late_Spikes
Early_Stealth_RockXEarly_Sticky_Web <- Early_Stealth_Rock*Early_Sticky_Web
Early_Stealth_RockXLate_Sticky_Web <- Early_Stealth_Rock*Late_Sticky_Web
Early_Stealth_RockXEarly_Toxic_Spikes <- Early_Stealth_Rock*Early_Toxic_Spikes
Early_Stealth_RockXLate_Toxic_Spikes <- Early_Stealth_Rock*Late_Toxic_Spikes
Early_Stealth_RockXWhirlwind <- Early_Stealth_Rock*Whirlwind
Early_Stealth_RockXDragon_Tail <- Early_Stealth_Rock*Dragon_Tail
Early_Stealth_RockXRoar <- Early_Stealth_Rock*(Roar)
Early_Stealth_RockXCircle_Throw <- Early_Stealth_Rock*Circle_Throw

Late_Stealth_RockXEarly_Spikes <- Late_Stealth_Rock*Early_Spikes
Late_Stealth_RockXLate_Spikes <- Late_Stealth_Rock*Late_Spikes
Late_Stealth_RockXEarly_Sticky_Web <- Late_Stealth_Rock*Early_Sticky_Web
Late_Stealth_RockXLate_Sticky_Web <- Late_Stealth_Rock*Late_Sticky_Web
Late_Stealth_RockXEarly_Toxic_Spikes <- Late_Stealth_Rock*Early_Toxic_Spikes
Late_Stealth_RockXLate_Toxic_Spikes <- Late_Stealth_Rock*Late_Toxic_Spikes
Late_Stealth_RockXWhirlwind <- Late_Stealth_Rock*Whirlwind
Late_Stealth_RockXDragon_Tail <- Late_Stealth_Rock*Dragon_Tail
Late_Stealth_RockXRoar <- Late_Stealth_Rock*(Roar)
Late_Stealth_RockXCircle_Throw <- Late_Stealth_Rock*Circle_Throw

Early_Stealth_RockXEarly_Spikes2 <- Early_Stealth_Rock*Early_Spikes2
Early_Stealth_RockXEarly_Sticky_Web2 <- Early_Stealth_Rock*Early_Sticky_Web2
Early_Stealth_RockXEarly_Toxic_Spikes2 <- Early_Stealth_Rock*Early_Toxic_Spikes2
Early_Stealth_RockXLate_Spikes2 <- Early_Stealth_Rock*Late_Spikes2
Early_Stealth_RockXLate_Sticky_Web2 <- Early_Stealth_Rock*Late_Sticky_Web2
Early_Stealth_RockXLate_Toxic_Spikes2 <- Early_Stealth_Rock*Late_Toxic_Spikes2
Early_Stealth_RockXWhirlwind2 <- Early_Stealth_Rock*Whirlwind2
Early_Stealth_RockXDragon_Tail2 <- Early_Stealth_Rock*Dragon_Tail2
Early_Stealth_RockXRoar2 <- Early_Stealth_Rock*Roar2
Early_Stealth_RockXCircle_Throw2 <- Early_Stealth_Rock*Circle_Throw2

Late_Stealth_RockXLate_Spikes2 <- Late_Stealth_Rock*Late_Spikes2
Late_Stealth_RockXLate_Sticky_Web2 <- Late_Stealth_Rock*Late_Sticky_Web2
Late_Stealth_RockXLate_Toxic_Spikes2 <- Late_Stealth_Rock*Late_Toxic_Spikes2
Late_Stealth_RockXEarly_Spikes2 <- Late_Stealth_Rock*Early_Spikes2
Late_Stealth_RockXEarly_Sticky_Web2 <- Late_Stealth_Rock*Early_Sticky_Web2
Late_Stealth_RockXEarly_Toxic_Spikes2 <- Late_Stealth_Rock*Early_Toxic_Spikes2
Late_Stealth_RockXWhirlwind2 <- Late_Stealth_Rock*Whirlwind2
Late_Stealth_RockXDragon_Tail2 <- Late_Stealth_Rock*Dragon_Tail2
Late_Stealth_RockXRoar2 <- Late_Stealth_Rock*Roar2
Late_Stealth_RockXCircle_Throw2 <- Late_Stealth_Rock*Circle_Throw2

probit7 <- glm(Outcome ~ Early_Stealth_Rock + Late_Stealth_Rock + Early_Spikes + Late_Spikes + Early_Toxic_Spikes + Late_Toxic_Spikes + Early_Sticky_Web  + Late_Sticky_Web  +Dragon_Tail + Roar + Whirlwind + Circle_Throw, family=binomial(link="probit"), data=dcn[which(dcn$battle_length>0),])

probit8 <- glm(Outcome ~ Early_Stealth_Rock + Late_Stealth_Rock + Early_Spikes + Late_Spikes + Early_Toxic_Spikes + Late_Toxic_Spikes + Early_Sticky_Web  + Late_Sticky_Web + Dragon_Tail + Roar + Whirlwind + Circle_Throw + 
                 Circle_Throw2 +
               Early_Stealth_Rock2 +
               Early_Spikes2 +
               Early_Toxic_Spikes2 +
               Early_Sticky_Web2 +
               Late_Stealth_Rock2 +
               Late_Spikes2 +
               Late_Toxic_Spikes2 +
               Late_Sticky_Web2 +
               Dragon_Tail2 +
               Roar2+
                 Whirlwind2
                 , family=binomial(link="probit"), data=dcn[which(dcn$battle_length>0),])

probit9 <- glm(Outcome ~ Early_Stealth_Rock + Late_Stealth_Rock + Early_Spikes + Late_Spikes + Early_Toxic_Spikes + Late_Toxic_Spikes + Early_Sticky_Web  + Late_Sticky_Web + Dragon_Tail + Roar + Whirlwind + Circle_Throw + Circle_Throw2 +
                 Early_Stealth_Rock2 +
                 Early_Spikes2 +
                 Early_Toxic_Spikes2 +
                 Early_Sticky_Web2 +
                 Late_Stealth_Rock2 +
                 Late_Spikes2 +
                 Late_Toxic_Spikes2 +
                 Late_Sticky_Web2 +
                 Dragon_Tail2 +
                 Roar2 + Whirlwind2+Early_Stealth_RockXEarly_Spikes +
                 Early_Stealth_RockXLate_Spikes +
                 Early_Stealth_RockXEarly_Sticky_Web +
                 Early_Stealth_RockXLate_Sticky_Web +
                 Early_Stealth_RockXEarly_Toxic_Spikes +
                 Early_Stealth_RockXLate_Toxic_Spikes +
                 Early_Stealth_RockXWhirlwind +
                 Early_Stealth_RockXDragon_Tail + 
                 Early_Stealth_RockXRoar +
                 Early_Stealth_RockXCircle_Throw +
                 Late_Stealth_RockXEarly_Spikes +
                 Late_Stealth_RockXLate_Spikes +
                 Late_Stealth_RockXEarly_Sticky_Web +
                 Late_Stealth_RockXLate_Sticky_Web +
                 Late_Stealth_RockXEarly_Toxic_Spikes +
                 Late_Stealth_RockXLate_Toxic_Spikes + 
                 Late_Stealth_RockXWhirlwind +
                 Late_Stealth_RockXDragon_Tail + 
                 Late_Stealth_RockXRoar +
                 Late_Stealth_RockXCircle_Throw +
                 Early_Stealth_RockXEarly_Spikes2 +
               Early_Stealth_RockXEarly_Sticky_Web2 +
               Early_Stealth_RockXEarly_Toxic_Spikes2 +
               Early_Stealth_RockXLate_Spikes2 +
               Early_Stealth_RockXLate_Sticky_Web2 +
               Early_Stealth_RockXLate_Toxic_Spikes2 +
               Early_Stealth_RockXWhirlwind2 +
               Early_Stealth_RockXDragon_Tail2 +
               Early_Stealth_RockXRoar2 +
               Early_Stealth_RockXCircle_Throw2 +
               Late_Stealth_RockXLate_Spikes2 +
               Late_Stealth_RockXLate_Sticky_Web2 +
               Late_Stealth_RockXLate_Toxic_Spikes2 +
               Late_Stealth_RockXEarly_Spikes2 +
               Late_Stealth_RockXEarly_Sticky_Web2 +
               Late_Stealth_RockXEarly_Toxic_Spikes2 +
               Late_Stealth_RockXWhirlwind2 +
               Late_Stealth_RockXDragon_Tail2 +
               Late_Stealth_RockXRoar2 +
               Late_Stealth_RockXCircle_Throw2 
                 , family=binomial(link="probit"), data=dcn[which(dcn$battle_length>0),] )
probit10 <- glm(Outcome ~Early_Stealth_Rock + Late_Stealth_Rock + Early_Spikes + Late_Spikes + Early_Toxic_Spikes + Late_Toxic_Spikes + Early_Sticky_Web  + Late_Sticky_Web + Dragon_Tail + Roar + Whirlwind + Circle_Throw + 
                  Circle_Throw2 +
                  Early_Stealth_Rock2 +
                  Early_Spikes2 +
                  Early_Toxic_Spikes2 +
                  Early_Sticky_Web2 +
                  Late_Stealth_Rock2 +
                  Late_Spikes2 +
                  Late_Toxic_Spikes2 +
                  Late_Sticky_Web2 +
                  Dragon_Tail2 +
                  Roar2+Whirlwind2+
                  Early_Stealth_RockXEarly_Spikes +
                  Early_Stealth_RockXLate_Spikes +
                  Early_Stealth_RockXEarly_Sticky_Web +
                  Early_Stealth_RockXLate_Sticky_Web +
                  Early_Stealth_RockXEarly_Toxic_Spikes +
                  Early_Stealth_RockXLate_Toxic_Spikes +
                  Early_Stealth_RockXWhirlwind +
                  Early_Stealth_RockXDragon_Tail + 
                  Early_Stealth_RockXRoar +
                  Early_Stealth_RockXCircle_Throw +
                  Late_Stealth_RockXEarly_Spikes +
                  Late_Stealth_RockXLate_Spikes +
                  Late_Stealth_RockXEarly_Sticky_Web +
                  Late_Stealth_RockXLate_Sticky_Web +
                  Late_Stealth_RockXEarly_Toxic_Spikes +
                  Late_Stealth_RockXLate_Toxic_Spikes + 
                  Late_Stealth_RockXWhirlwind +
                  Late_Stealth_RockXDragon_Tail + 
                  Late_Stealth_RockXRoar +
                  Late_Stealth_RockXCircle_Throw +
                  Early_Stealth_RockXEarly_Spikes2 +
                  Early_Stealth_RockXEarly_Sticky_Web2 +
                  Early_Stealth_RockXEarly_Toxic_Spikes2 +
                  Early_Stealth_RockXLate_Spikes2 +
                  Early_Stealth_RockXLate_Sticky_Web2 +
                  Early_Stealth_RockXLate_Toxic_Spikes2 +
                  Early_Stealth_RockXWhirlwind2 +
                  Early_Stealth_RockXDragon_Tail2 +
                  Early_Stealth_RockXRoar2 +
                  Early_Stealth_RockXCircle_Throw2 +
                  Late_Stealth_RockXLate_Spikes2 +
                  Late_Stealth_RockXLate_Sticky_Web2 +
                  Late_Stealth_RockXLate_Toxic_Spikes2 +
                  Late_Stealth_RockXEarly_Spikes2 +
                  Late_Stealth_RockXEarly_Sticky_Web2 +
                  Late_Stealth_RockXEarly_Toxic_Spikes2 +
                  Late_Stealth_RockXWhirlwind2 +
                  Late_Stealth_RockXDragon_Tail2 +
                  Late_Stealth_RockXRoar2 +
                  Late_Stealth_RockXCircle_Throw2 + 
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
                  Zygarde, family=binomial(link="probit"), data=dcn[which(dcn$battle_length>0),] )
probit11 <- glm(Outcome ~Early_Stealth_Rock + Late_Stealth_Rock + Early_Spikes + Late_Spikes + Early_Toxic_Spikes + Late_Toxic_Spikes + Early_Sticky_Web  + Late_Sticky_Web + Dragon_Tail + Roar + Whirlwind + Circle_Throw + Early_Stealth_RockXEarly_Spikes +
                  Circle_Throw2 +
                  Early_Stealth_Rock2 +
                  Early_Spikes2 +
                  Early_Toxic_Spikes2 +
                  Early_Sticky_Web2 +
                  Late_Stealth_Rock2 +
                  Late_Spikes2 +
                  Late_Toxic_Spikes2 +
                  Late_Sticky_Web2 +
                  Dragon_Tail2 +
                  Roar2+Whirlwind2+
                  Early_Stealth_RockXLate_Spikes +
                  Early_Stealth_RockXEarly_Sticky_Web +
                  Early_Stealth_RockXLate_Sticky_Web +
                  Early_Stealth_RockXEarly_Toxic_Spikes +
                  Early_Stealth_RockXLate_Toxic_Spikes +
                  Early_Stealth_RockXWhirlwind +
                  Early_Stealth_RockXDragon_Tail + 
                  Early_Stealth_RockXRoar +
                  Early_Stealth_RockXCircle_Throw +
                  Late_Stealth_RockXEarly_Spikes +
                  Late_Stealth_RockXLate_Spikes +
                  Late_Stealth_RockXEarly_Sticky_Web +
                  Late_Stealth_RockXLate_Sticky_Web +
                  Late_Stealth_RockXEarly_Toxic_Spikes +
                  Late_Stealth_RockXLate_Toxic_Spikes + 
                  Late_Stealth_RockXWhirlwind +
                  Late_Stealth_RockXDragon_Tail + 
                  Late_Stealth_RockXRoar +
                  Late_Stealth_RockXCircle_Throw +
                  Early_Stealth_RockXEarly_Spikes2 +
                  Early_Stealth_RockXEarly_Sticky_Web2 +
                  Early_Stealth_RockXEarly_Toxic_Spikes2 +
                  Early_Stealth_RockXLate_Spikes2 +
                  Early_Stealth_RockXLate_Sticky_Web2 +
                  Early_Stealth_RockXLate_Toxic_Spikes2 +
                  Early_Stealth_RockXWhirlwind2 +
                  Early_Stealth_RockXDragon_Tail2 +
                  Early_Stealth_RockXRoar2 +
                  Early_Stealth_RockXCircle_Throw2 +
                  Late_Stealth_RockXLate_Spikes2 +
                  Late_Stealth_RockXLate_Sticky_Web2 +
                  Late_Stealth_RockXLate_Toxic_Spikes2 +
                  Late_Stealth_RockXEarly_Spikes2 +
                  Late_Stealth_RockXEarly_Sticky_Web2 +
                  Late_Stealth_RockXEarly_Toxic_Spikes2 +
                  Late_Stealth_RockXWhirlwind2 +
                  Late_Stealth_RockXDragon_Tail2 +
                  Late_Stealth_RockXRoar2 +
                  Late_Stealth_RockXCircle_Throw2 + 
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
               +Venusaurite, family=binomial(link="probit"), data=dcn[which(dcn$battle_length>0),] )


library(readr)
write_rds(probit7, "probit7.rds")
write_rds(probit8, "probit8.rds")
write_rds(probit9, "probit9.rds")
write_rds(probit10, "probit10.rds")
write_rds(probit11, "probit11.rds")