
team add uploadP5 {"text":"Upload Data Player5"}
team add manifoldsP5 {"text":"Unlock Manifolds Player5"}
team add cardP5 {"text":"Swipe Card Player5"}
team add scanP5 {"text":"Submit Scan Player5"}
team add reactorP5 {"text":"Start Reactor Player5"}
team add steeringP5 {"text":"Stabilize Steering Player5"}
team add shieldsP5 {"text":"Prime Shields Player5"}
team add sampleP5 {"text":"Inspect Sample Player5"}
team add fuelP5 {"text":"Fuel Engines Player5"}
team add garbageP5 {"text":"Empty Garbage Player5"}
team add chuteP5 {"text":"Empty Chute Player5"}
team add powerP5 {"text":"Divert Power Player5"}
team add courseP5 {"text":"Chart Course Player5"}
team add asteroidsP5 {"text":"Clear Asteroids Player5"}
team add cleanP5 {"text":"Clean O2 Filter Player5"}
team add alignP5 {"text":"Align Engine Output Player5"}
team add calibrateP5 {"text":"Calibrate Distributor Player5"}
team add wiringP5 {"text":"Fix Wiring Player5"}

### uploadP5
team join uploadP5 oa
team modify uploadP5 prefix {"text":"XXX: Downl"}
team modify uploadP5 suffix {"text":"d Data (0/2)"}

### manifoldsP5
team join manifoldsP5 Manifolds
team modify manifoldsP5 prefix {"text":"Reactor: Unlock "}

### cardP5
team join cardP5 Swi
team modify cardP5 prefix {"text":"Admin: "}
team modify cardP5 suffix {"text":"pe Card"}

### scanP5
team join scanP5 Scan
team modify scanP5 prefix {"text":"MedBay: Submit "}

### reactorP5
team join reactorP5 Reacto
team modify reactorP5 prefix {"text":"Reactor: Start "}
team modify reactorP5 suffix {"text":"r"}

### steeringP5
team join steeringP5 Stee
team modify steeringP5 prefix {"text":"Navigation: Stabilize "}
team modify steeringP5 suffix {"text":"ring"}

### shieldsP5
team join shieldsP5 ime
team modify shieldsP5 prefix {"text":"Shields: Pr"}
team modify shieldsP5 suffix {"text":" Shields"}

### sampleP5
team join sampleP5 nspect
team modify sampleP5 prefix {"text":"MedBay: I"}
team modify sampleP5 suffix {"text":" Sample"}

### fuelP5
team join fuelP5 ue
team modify fuelP5 prefix {"text":"Storage: F"}
team modify fuelP5 suffix {"text":"l Engines (0/2)"}

### garbageP5
team join garbageP5 Gar
team modify garbageP5 prefix {"text":"Cafeteria: Empty "}
team modify garbageP5 suffix {"text":"bage (0/2)"}

### chuteP5
team join chuteP5 ute
team modify chuteP5 prefix {"text":"O2: Empty Ch"}
team modify chuteP5 suffix {"text":" (0/2)"}


### powerP5
team join powerP5 ivert
team modify powerP5 prefix {"text":"Electrical: D"}
team modify powerP5 suffix {"text":" Power to XXX (0/2)"}

### courseP5
team join courseP5 Cours
team modify courseP5 prefix {"text":"Navigation: Chart "}
team modify courseP5 suffix {"text":"e"}

### asteroidsP5
team join asteroidsP5 Astero
team modify asteroidsP5 prefix {"text":"Weapons: Clear "}
team modify asteroidsP5 suffix {"text":"ids (0/12)"}

### cleanP5
team join cleanP5 Filter
team modify cleanP5 prefix {"text":"O2: Clean O2 "}

### alignP5
team join alignP5 Engin
team modify alignP5 prefix {"text":"Upper Engine: Align "}
team modify alignP5 suffix {"text":"e Output (0/2)"}

### calibrateP5
team join calibrateP5 Calib
team modify calibrateP5 prefix {"text":"Electrical: "}
team modify calibrateP5 suffix {"text":"rate Distributor"}

### wiringP5
team join wiringP5 Wirin
team modify wiringP5 prefix {"text":"XXX: Fix "}
team modify wiringP5 suffix {"text":"g"}
