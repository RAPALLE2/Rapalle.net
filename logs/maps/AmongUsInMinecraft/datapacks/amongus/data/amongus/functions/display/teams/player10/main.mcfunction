
team add uploadP10 {"text":"Upload Data Player10"}
team add manifoldsP10 {"text":"Unlock Manifolds Player10"}
team add cardP10 {"text":"Swipe Card Player10"}
team add scanP10 {"text":"Submit Scan Player10"}
team add reactorP10 {"text":"Start Reactor Player10"}
team add steeringP10 {"text":"Stabilize Steering Player10"}
team add shieldsP10 {"text":"Prime Shields Player10"}
team add sampleP10 {"text":"Inspect Sample Player10"}
team add fuelP10 {"text":"Fuel Engines Player10"}
team add garbageP10 {"text":"Empty Garbage Player10"}
team add chuteP10 {"text":"Empty Chute Player10"}
team add powerP10 {"text":"Divert Power Player10"}
team add courseP10 {"text":"Chart Course Player10"}
team add asteroidsP10 {"text":"Clear Asteroids Player10"}
team add cleanP10 {"text":"Clean O2 Filter Player10"}
team add alignP10 {"text":"Align Engine Output Player10"}
team add calibrateP10 {"text":"Calibrate Distributor Player10"}
team add wiringP10 {"text":"Fix Wiring Player10"}

### uploadP10
team join uploadP10 at
team modify uploadP10 prefix {"text":"XXX: Download D"}
team modify uploadP10 suffix {"text":"a (0/2)"}

### manifoldsP10
team join manifoldsP10 Mani
team modify manifoldsP10 prefix {"text":"Reactor: Unlock "}
team modify manifoldsP10 suffix {"text":"folds"}

### cardP10
team join cardP10 Sw
team modify cardP10 prefix {"text":"Admin: "}
team modify cardP10 suffix {"text":"ipe Card"}

### scanP10
team join scanP10 mit
team modify scanP10 prefix {"text":"MedBay: Sub"}
team modify scanP10 suffix {"text":" Scan"}

### reactorP10
team join reactorP10 actor
team modify reactorP10 prefix {"text":"Reactor: Start Re"}

### steeringP10
team join steeringP10 Stabi
team modify steeringP10 prefix {"text":"Navigation: "}
team modify steeringP10 suffix {"text":"lize Steering"}

### shieldsP10
team join shieldsP10 hields
team modify shieldsP10 prefix {"text":"Shields: Prime S"}

### sampleP10
team join sampleP10 spect
team modify sampleP10 prefix {"text":"MedBay: In"}
team modify sampleP10 suffix {"text":" Sample"}

### fuelP10
team join fuelP10 nes
team modify fuelP10 prefix {"text":"Storage: Fuel Engi"}
team modify fuelP10 suffix {"text":" (0/2)"}

### garbageP10
team join garbageP10 ge
team modify garbageP10 prefix {"text":"Cafeteria: Empty Garba"}
team modify garbageP10 suffix {"text":" (0/2)"}

### chuteP10
team join chuteP10 mpty
team modify chuteP10 prefix {"text":"O2: E"}
team modify chuteP10 suffix {"text":" Chute (0/2)"}


### powerP10
team join powerP10 owe
team modify powerP10 prefix {"text":"Electrical: Divert P"}
team modify powerP10 suffix {"text":"r to XXX (0/2)"}

### courseP10
team join courseP10 urse
team modify courseP10 prefix {"text":"Navigation: Chart Co"}

### asteroidsP10
team join asteroidsP10 oids
team modify asteroidsP10 prefix {"text":"Weapons: Clear Aster"}
team modify asteroidsP10 suffix {"text":" (0/12)"}

### cleanP10
team join cleanP10 lter
team modify cleanP10 prefix {"text":"O2: Clean O2 Fi"}

### alignP10
team join alignP10 Outp
team modify alignP10 prefix {"text":"Upper Engine: Align Engine "}
team modify alignP10 suffix {"text":"ut (0/2)"}

### calibrateP10
team join calibrateP10 Distri
team modify calibrateP10 prefix {"text":"Electrical: Calibrate "}
team modify calibrateP10 suffix {"text":"butor"}

### wiringP10
team join wiringP10 iring
team modify wiringP10 prefix {"text":"XXX: Fix W"}
