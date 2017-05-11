options(max.print=1000000)
load("ds.Rda")
Outcome <- ds[,2]
Player <- ds[,3]
Rank <- ds[,4]
Battle_Length <- ds[,5]
Circle_Throw <- ds[,6]
Stealth_Rock <- ds[,7]
Spikes <- ds[,8]
Toxic_Spikes <- ds[,9]
Sticky_Web <- ds[,10]
# Defog <- ds[,11]
# Rapid_Spin <- ds[,12]
Dragon_Tail <- ds[,13]
Roar <- ds[,14]
Whirlwind  <- ds[,15]
Circle_Throw2 <- Circle_Throw^2
Stealth_Rock2 <- Stealth_Rock^2
Spikes2 <- Spikes^2
Toxic_Spikes2 <- Toxic_Spikes^2
Sticky_Web2 <- Sticky_Web^2
Dragon_Tail2 <- Dragon_Tail^2
Roar2 <- Roar^2
Whirlwind2  <- Whirlwind^2
Abomasnow <- ds[,16]
Absol<- ds[,17]
Accelgor<- ds[,18]
Aerodactyl<- ds[,19]
Aggron<- ds[,20]
Alakazam<- ds[,21]
Alomomola<- ds[,22]
Altaria<- ds[,23]
Ambipom<- ds[,24]
Amoonguss<- ds[,25]
Ampharos<- ds[,26]
Arbok<- ds[,27]
Arcanine<- ds[,28]
Archeops<- ds[,29]
Ariados<- ds[,30]
Armaldo<- ds[,31]
Aromatisse<- ds[,32]
Articuno<- ds[,33]
Audino<- ds[,34]
Aurorus<- ds[,35]
Avalugg<- ds[,36]
Azelf<- ds[,37]
Azumarill<- ds[,38]
Banette<- ds[,39]
Barbaracle<- ds[,40]
Basculin<- ds[,41]
Bastiodon<- ds[,42]
Beartic<- ds[,43]
Beautifly<- ds[,44]
Beedrill<- ds[,45]
Beheeyem<- ds[,46]
Bellossom<- ds[,47]
Bibarel<- ds[,48]
Bisharp<- ds[,49]
Blastoise<- ds[,50]
Blissey<- ds[,51]
Bouffalant<- ds[,52]
Braviary<- ds[,53]
Breloom<- ds[,54]
Bronzong<- ds[,55]
Butterfree<- ds[,56]
Cacturne<- ds[,57]
Camerupt<- ds[,58]
Carbink<- ds[,59]
Carnivine<- ds[,60]
Carracosta<- ds[,61]
Castform<- ds[,62]
Celebi<- ds[,63]
Chandelure<- ds[,64]
Chansey<- ds[,65]  
Charizard<- ds[,66]  
Chatot<- ds[,67]  
Cherrim<- ds[,68]  
Chesnaught<- ds[,69]  
Chimecho<- ds[,70]  
Cinccino<- ds[,71]  
Clawitzer<- ds[,72]  
Claydol<- ds[,73]  
Clefable<- ds[,74]  
Clefairy<- ds[,75]  
Cloyster<- ds[,76]  
Cobalion<- ds[,77]  
Cofagrigus<- ds[,78]  
Combusken<- ds[,79]  
Conkeldurr<- ds[,80]  
Corsola<- ds[,81]  
Cradily<- ds[,82]  
Crawdaunt<- ds[,83]  
Cresselia<- ds[,84]  
Crobat<- ds[,85]  
Crustle<- ds[,86]  
Cryogonal<- ds[,87]  
Darmanitan<- ds[,88]  
Dedenne<- ds[,89]  
Delcatty<- ds[,90]  
Delibird<- ds[,91]  
Delphox<- ds[,92]  
Dewgong<- ds[,93]  
Diancie<- ds[,94]  
Diggersby<- ds[,95]  
Ditto<- ds[,96]  
Dodrio<- ds[,97]  
Donphan<- ds[,98]  
Doublade<- ds[,99]  
Dragalge<- ds[,100]  
Dragonair<- ds[,101]  
Dragonite<- ds[,102]  
Drapion<- ds[,103]  
Drifblim<- ds[,104]  
Druddigon<- ds[,105]  
Dugtrio<- ds[,106]  
Dunsparce<- ds[,107]  
Duosion<- ds[,108]  
Durant<- ds[,109]  
Dusclops<- ds[,110]  
Dusknoir<- ds[,111]  
Dustox<- ds[,112]  
Eelektross<- ds[,113]  
Electivire<- ds[,114]  
Electrode<- ds[,115]  
Emboar<- ds[,116]  
Emolga<- ds[,117]  
Empoleon<- ds[,118]  
Entei<- ds[,119]  
Escavalier<- ds[,120]  
Espeon<- ds[,121]  
Excadrill<- ds[,122]  
Exeggutor<- ds[,123]  
Exploud<- ds[,124]  
Farfetchd<- ds[,125]  
Fearow<- ds[,126]  
Feraligatr<- ds[,127]  
Ferroseed<- ds[,128]  
Ferrothorn<- ds[,129]  
Flareon<- ds[,130]  
Fletchinder<- ds[,131]  
Floatzel<- ds[,132]  
Florges<- ds[,133]  
Flygon<- ds[,134]  
Forretress<- ds[,135]  
Fraxure<- ds[,136]  
Froslass<- ds[,137]  
Furfrou<- ds[,138]  
Furret<- ds[,139]  
Gabite<- ds[,140]  
Gallade<- ds[,141]  
Galvantula<- ds[,142]  
Garbodor<- ds[,143]  
Garchomp<- ds[,144]  
Gardevoir<- ds[,145]  
Gastrodon<- ds[,146]  
Gengar<- ds[,147]  
Gigalith<- ds[,148]  
Girafarig<- ds[,149]  
Glaceon<- ds[,150]  
Glalie<- ds[,151]  
Gligar<- ds[,152]  
Gliscor<- ds[,153]  
Gogoat<- ds[,154]  
Golbat<- ds[,155]  
Golduck<- ds[,156]  
Golem<- ds[,157]  
Golurk<- ds[,158]  
Goodra<- ds[,159]  
Gorebyss<- ds[,160]  
Gothitelle<- ds[,161]  
Gourgeist<- ds[,162]  
Granbull<- ds[,163]  
Grumpig<- ds[,164]  
Gurdurr<- ds[,165]  
Gyarados<- ds[,166]  
Hariyama<- ds[,167]  
Haunter<- ds[,168]  
Hawlucha<- ds[,169]  
Haxorus<- ds[,170]  
Heatmor<- ds[,171]  
Heatran<- ds[,172]  
Heliolisk<- ds[,173]  
Heracross<- ds[,174]  
Hippowdon<- ds[,175]  
Hitmonchan<- ds[,176]  
Hitmonlee<- ds[,177]  
Hitmontop<- ds[,178]  
Honchkrow<- ds[,179]  
Hoopa<- ds[,180]  
HoopaU<- ds[,181]  
Houndoom<- ds[,182]  
Huntail<- ds[,183]  
Hydreigon<- ds[,184]  
Hypno<- ds[,185]  
Illumise<- ds[,186]  
Infernape<- ds[,187]  
Jellicent<- ds[,188]  
Jirachi<- ds[,189]  
Jolteon<- ds[,190]  
Jumpluff<- ds[,191]  
Jynx<- ds[,192]  
Kabutops<- ds[,193]  
Kadabra<- ds[,194]  
Kangaskhan<- ds[,195]  
Kecleon<- ds[,196]  
Keldeo<- ds[,197]  
Kingdra<- ds[,198]  
Kingler<- ds[,199]  
Klang<- ds[,200]  
Klefki<- ds[,201]  
Klinklang<- ds[,202]  
Kricketune<- ds[,203]  
Krokorok<- ds[,204]  
Krookodile<- ds[,205]  
Kyurem<- ds[,206]  
KyuremB<- ds[,207]  
LandorusT<- ds[,208]  
Lanturn<- ds[,209]  
Lapras<- ds[,210]  
Latias<- ds[,211]  
Latios<- ds[,212]  
Leafeon<- ds[,213]  
Leavanny<- ds[,214]  
Ledian<- ds[,215]  
Lickilicky<- ds[,216]  
Liepard<- ds[,217]  
Lilligant<- ds[,218]  
Linoone<- ds[,219]  
Lopunny<- ds[,220]  
Lucario<- ds[,221]  
Ludicolo<- ds[,222]  
Lumineon<- ds[,223]  
Lunatone<- ds[,224]  
Luvdisc<- ds[,225]  
Luxray<- ds[,226]  
Machamp<- ds[,227]  
Machoke<- ds[,228]  
Magcargo<- ds[,229]  
Magmortar<- ds[,230]  
Magneton<- ds[,231]  
Magnezone<- ds[,232]  
Malamar<- ds[,233]  
Mamoswine<- ds[,234]  
Manaphy<- ds[,235]  
Mandibuzz<- ds[,236]  
Manectric<- ds[,237]  
Mantine<- ds[,238]  
Maractus<- ds[,239]  
Marowak<- ds[,240]  
Masquerain<- ds[,241]  
Mawile<- ds[,242]  
Medicham<- ds[,243]  
Meganium<- ds[,244]  
Meloetta<- ds[,245]  
Meowstic<- ds[,246]  
Mesprit<- ds[,247]  
Metagross<- ds[,248]  
Metang<- ds[,249]  
Mew<- ds[,250]  
Mienshao<- ds[,251]  
Mightyena<- ds[,252]  
Milotic<- ds[,253]  
Miltank<- ds[,254]  
Minun<- ds[,255]  
Misdreavus<- ds[,256]  
Mismagius<- ds[,257]  
Moltres<- ds[,258]  
Monferno<- ds[,259]  
Mothim<- ds[,260]  
MrMime<- ds[,261]  
Muk<- ds[,262]  
Murkrow<- ds[,263]  
Musharna<- ds[,264]  
Nidoking<- ds[,265]  
Nidoqueen<- ds[,266]  
Ninetales<- ds[,267]  
Ninjask<- ds[,268]  
Noctowl<- ds[,269]  
Noivern<- ds[,270]  
Octillery<- ds[,271]  
Omastar<- ds[,272]  
Pachirisu<- ds[,273]  
Pangoro<- ds[,274]  
Parasect<- ds[,275]  
Pawniard<- ds[,276]  
Pelipper<- ds[,277]  
Persian<- ds[,278]  
Phione<- ds[,279]  
Pidgeot<- ds[,280]  
Piloswine<- ds[,281]  
Pinsir<- ds[,282]  
Plusle<- ds[,283]  
Politoed<- ds[,284]  
Poliwrath<- ds[,285]  
PorygonZ<- ds[,286]  
Porygon2<- ds[,287]  
Primeape<- ds[,288]  
Prinplup<- ds[,289]  
Probopass<- ds[,290]  
Purugly<- ds[,291]  
Pyroar<- ds[,292]  
Quagsire<- ds[,293]  
Quilladin<- ds[,294]  
Qwilfish<- ds[,295]  
Raichu<- ds[,296]  
Raikou<- ds[,297]  
Rampardos<- ds[,298]  
Rapidash<- ds[,299]  
Raticate<- ds[,300]  
Regice<- ds[,301]  
Regigigas<- ds[,302]  
Regirock<- ds[,303]  
Registeel<- ds[,304]  
Relicanth<- ds[,305]  
Reuniclus<- ds[,306]  
Rhydon<- ds[,307]  
Rhyperior<- ds[,308]  
Roselia<- ds[,309]  
Roserade<- ds[,310]  
Rotom<- ds[,311]  
RotomC<- ds[,312]  
RotomF<- ds[,313]  
RotomH<- ds[,314]  
RotomS<- ds[,315]  
RotomW<- ds[,316]  
Sableye<- ds[,317]  
Salamence<- ds[,318]  
Samurott<- ds[,319]  
Sandslash<- ds[,320]  
Sawk<- ds[,321]  
Sawsbuck<- ds[,322]  
Sceptile<- ds[,323]  
Scizor<- ds[,324]  
Scolipede<- ds[,325]  
Scrafty<- ds[,326]  
Scyther<- ds[,327]  
Seaking<- ds[,328]  
Seismitoad<- ds[,329]  
Serperior<- ds[,330]  
Servine<- ds[,331]  
Seviper<- ds[,332]  
Sharpedo<- ds[,333]  
Shaymin<- ds[,334]  
Shedinja<- ds[,335]  
Shiftry<- ds[,336]  
Shuckle<- ds[,337]  
Sigilyph<- ds[,338]  
Simipour<- ds[,339]  
Simisage<- ds[,340]  
Simisear<- ds[,341]  
Skarmory<- ds[,342]  
Skuntank<- ds[,343]  
Slaking<- ds[,344]  
Slowbro<- ds[,345]  
Slowking<- ds[,346]  
Slurpuff<- ds[,347]  
Smeargle<- ds[,348]  
Sneasel<- ds[,349]  
Snorlax<- ds[,350]  
Solrock<- ds[,351]  
Spinda<- ds[,352]  
Spiritomb<- ds[,353]  
Stantler<- ds[,354]  
Staraptor<- ds[,355]  
Starmie<- ds[,356]  
Steelix<- ds[,357]  
Stoutland<- ds[,358]  
Stunfisk<- ds[,359]  
Sudowoodo<- ds[,360]  
Suicune<- ds[,361]  
Sunflora<- ds[,362]  
Swalot<- ds[,363]  
Swampert<- ds[,364]  
Swanna<- ds[,365]  
Swellow<- ds[,366]  
Swoobat<- ds[,367]  
Sylveon<- ds[,368]  
Talonflame<- ds[,369]  
Tangela<- ds[,370]  
Tangrowth<- ds[,371]  
Tauros<- ds[,372]  
Tentacruel<- ds[,373]  
Terrakion<- ds[,374]  
Throh<- ds[,375]  
Thundurus<- ds[,376]  
ThundurusT<- ds[,377]  
Togekiss<- ds[,378]  
Togetic<- ds[,379]  
Torkoal<- ds[,380]  
Tornadus<- ds[,381]  
TornadusT<- ds[,382]  
Torterra<- ds[,383]  
Toxicroak<- ds[,384]  
Trevenant<- ds[,385]  
Tropius<- ds[,386]  
Typhlosion<- ds[,387]  
Tyranitar<- ds[,388]  
Tyrantrum<- ds[,389]  
Umbreon<- ds[,390]  
Unfezant<- ds[,391]  
Unown<- ds[,392]  
Ursaring<- ds[,393]  
Uxie<- ds[,394]  
Vanilluxe<- ds[,395]  
Vaporeon<- ds[,396]  
Venomoth<- ds[,397]  
Venusaur<- ds[,398]  
Vespiquen<- ds[,399]  
Vibrava<- ds[,400]  
Victini<- ds[,401]  
Victreebel<- ds[,402]  
Vigoroth<- ds[,403]  
Vileplume<- ds[,404]  
Virizion<- ds[,405]  
Vivillon<- ds[,406]  
Volbeat<- ds[,407]  
Volcarona<- ds[,408]  
Vullaby<- ds[,409]  
Wailord<- ds[,410]  
Walrein<- ds[,411]  
Wartortle<- ds[,412]  
Watchog<- ds[,413]  
Weavile<- ds[,414]  
Weezing<- ds[,415]  
Whimsicott<- ds[,416]  
Whiscash<- ds[,417]  
Wigglytuff<- ds[,418]  
Wobbuffet<- ds[,419]  
Wormadam<- ds[,420]  
WormadamSandy<- ds[,421]  
WormadamTrash<- ds[,422]  
Xatu<- ds[,423]  
Yanmega<- ds[,424]  
Zangoose <- ds[,425]    
Zapdos<- ds[,426]
Zebstrika<- ds[,427]
Zoroark<- ds[,428]
Zweilous<- ds[,429]
Zygarde<- ds[,430]
Abomasite <- ds[,431]
Absolite <- ds[,431]
Aerodactylite <- ds[,432]
Aggronite <- ds[,433]
Alakazite <- ds[,434]
Altarianite <- ds[,435]
Ampharosite <- ds[,436]
Audinite <- ds[,437]
Banettite <- ds[,438]
Beedrillite <- ds[,439]
Blastoisinite <- ds[,441]
Cameruptite <- ds[,442]
Charizarditex <- ds[,443]
Charizarditey <- ds[,444]
Diancite <- ds[,445]
Galladite <- ds[,446] 
Garchompite <- ds[,447]
Gardevoirite <- ds[,448]
Glalitite <- ds[,449]
Gyaradosite <- ds[,450]
Heracronite <- ds[,451]
Houndoominite <- ds[,452]
Latiasite <- ds[,453]
Latiosite <- ds[,454]
Lopunnite <- ds[,455]
Manectite <- ds[,456]
Medichamite <- ds[,457]
Metagrossite <- ds[,458]
Pidgeotite <- ds[,459]
Pinsirite <- ds[,460]
Sablenite <- ds[,461]
Sceptilite <- ds[,462]
Scizorite <- ds[,463]
Sharpedonite <- ds[,464]
Slowbronite <- ds[,465]
Steelixite <- ds[,466]
Swampertite <- ds[,467]
Tyranitarite <- ds[,468]
Venusaurite <- ds[,469]  

Stealth_Rock_Spikes <- Stealth_Rock*Spikes
Stealth_Rock_Sticky_Web <- Stealth_Rock*Sticky_Web
Stealth_Rock_Toxic_Spikes <- Stealth_Rock*Toxic_Spikes
Stealth_Rock_Whirlwind <- Stealth_Rock*Whirlwind
Stealth_Rock_Dragon_Tail <- Stealth_Rock*Dragon_Tail
Stealth_Rock_Roar <- Stealth_Rock*Roar
Stealth_Rock_Circle_Throw <- Stealth_Rock*Circle_Throw

Stealth_Rock_Spikes2 <- Stealth_Rock*Spikes2
Stealth_Rock_Sticky_Web2 <- Stealth_Rock*Sticky_Web2
Stealth_Rock_Toxic_Spikes2 <- Stealth_Rock*Toxic_Spikes2
Stealth_Rock_Whirlwind2 <- Stealth_Rock*Whirlwind2
Stealth_Rock_Dragon_Tail2 <- Stealth_Rock*Dragon_Tail2
Stealth_Rock_Roar2 <- Stealth_Rock*Roar2
Stealth_Rock_Circle_Throw2 <- Stealth_Rock*Circle_Throw2

probit1 <- glm(Outcome ~ Stealth_Rock + Spikes + Toxic_Spikes + Sticky_Web  + Dragon_Tail + Roar + Whirlwind + Circle_Throw, family=binomial(link="probit"), data=ds[which(ds$battle_length>0),])
probit2 <- glm(Outcome ~ Stealth_Rock + Spikes + Toxic_Spikes +  Sticky_Web + Dragon_Tail + Roar + Whirlwind + Circle_Throw + Circle_Throw2 +
                Stealth_Rock2 +
                Spikes2 +
                Toxic_Spikes2 + 
                Sticky_Web2 +
                Dragon_Tail2 +
                Roar2 +
                Whirlwind2  , family=binomial(link="probit"), data=ds[which(ds$battle_length>0),])

probit3 <- glm(Outcome ~ Stealth_Rock + Spikes + Toxic_Spikes +  Sticky_Web + Dragon_Tail + Roar + Whirlwind + Circle_Throw + Circle_Throw2 +
                  Stealth_Rock2 +
                  Spikes2 +
                  Toxic_Spikes2 + 
                  Sticky_Web2 +
                  Dragon_Tail2 +
                  Roar2 +
                  Whirlwind2 + Stealth_Rock_Spikes + Stealth_Rock_Sticky_Web + Stealth_Rock_Toxic_Spikes + Stealth_Rock_Whirlwind + Stealth_Rock_Dragon_Tail + Stealth_Rock_Roar + Stealth_Rock_Circle_Throw +
                 Stealth_Rock_Spikes2 +
               Stealth_Rock_Sticky_Web2 +
               Stealth_Rock_Toxic_Spikes2 +
               Stealth_Rock_Whirlwind2 +
               Stealth_Rock_Dragon_Tail2 +
               Stealth_Rock_Roar2 +
               Stealth_Rock_Circle_Throw2 
                 , family=binomial(link="probit"), data=ds[which(ds$battle_length>0),] )
probit4 <- glm(Outcome ~Stealth_Rock + Spikes + Toxic_Spikes + Sticky_Web + Dragon_Tail + Roar + Whirlwind + Circle_Throw + Circle_Throw2 +
                 Stealth_Rock2 +
                 Spikes2 +
                 Toxic_Spikes2 + 
                 Sticky_Web2 +
                 Dragon_Tail2 +
                 Roar2 +
                 Whirlwind2 + Stealth_Rock_Spikes + Stealth_Rock_Sticky_Web + Stealth_Rock_Toxic_Spikes + Stealth_Rock_Whirlwind + Stealth_Rock_Dragon_Tail + Stealth_Rock_Roar+ Stealth_Rock_Circle_Throw +
                 Stealth_Rock_Spikes2 +
                 Stealth_Rock_Sticky_Web2 +
                 Stealth_Rock_Toxic_Spikes2 +
                 Stealth_Rock_Whirlwind2 +
                 Stealth_Rock_Dragon_Tail2 +
                 Stealth_Rock_Roar2 +
                 Stealth_Rock_Circle_Throw2 + 
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
                  Zygarde, family=binomial(link="probit"), data=ds[which(ds$battle_length>0),] )
probit5 <- glm(Outcome ~Stealth_Rock +  Spikes + Toxic_Spikes +  Sticky_Web  +  Dragon_Tail + Roar + Whirlwind + Circle_Throw + Circle_Throw2 +
                 Stealth_Rock2 +
                 Spikes2 +
                 Toxic_Spikes2 + 
                 Sticky_Web2 +
                 Dragon_Tail2 +
                 Roar2 +
                 Whirlwind2 + Stealth_Rock_Spikes + Stealth_Rock_Sticky_Web + Stealth_Rock_Toxic_Spikes + Stealth_Rock_Whirlwind + Stealth_Rock_Dragon_Tail + Stealth_Rock_Roar+ Stealth_Rock_Circle_Throw +
                 Stealth_Rock_Spikes2 +
                 Stealth_Rock_Sticky_Web2 +
                 Stealth_Rock_Toxic_Spikes2 +
                 Stealth_Rock_Whirlwind2 +
                 Stealth_Rock_Dragon_Tail2 +
                 Stealth_Rock_Roar2 +
                 Stealth_Rock_Circle_Throw2 +
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
               +Venusaurite, family=binomial(link="probit"), data=ds[which(ds$battle_length>0),] )


library(readr)
write_rds(probit1, "probit1.rds")
write_rds(probit2, "probit2.rds")
write_rds(probit3, "probit3.rds")
write_rds(probit4, "probit4.rds")
write_rds(probit5, "probit5.rds")