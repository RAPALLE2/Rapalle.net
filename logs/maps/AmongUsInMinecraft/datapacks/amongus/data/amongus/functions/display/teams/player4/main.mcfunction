
team add uploadP4 {"text":"Upload Data Player4"}
team add manifoldsP4 {"text":"Unlock Manifolds Player4"}
team add cardP4 {"text":"Swipe Card Player4"}
team add scanP4 {"text":"Submit Scan Player4"}
team add reactorP4 {"text":"Start Reactor Player4"}
team add steeringP4 {"text":"Stabilize Steering Player4"}
team add shieldsP4 {"text":"Prime Shields Player4"}
team add sampleP4 {"text":"Inspect Sample Player4"}
team add fuelP4 {"text":"Fuel Engines Player4"}
team add garbageP4 {"text":"Empty Garbage Player4"}
team add chuteP4 {"text":"Empty Chute Player4"}
team add powerP4 {"text":"Divert Power Player4"}
team add courseP4 {"text":"Chart Course Player4"}
team add asteroidsP4 {"text":"Clear Asteroids Player4"}
team add cleanP4 {"text":"Clean O2 Filter Player4"}
team add alignP4 {"text":"Align Engine Output Player4"}
team add calibrateP4 {"text":"Calibrate Distributor Player4"}
team add wiringP4 {"text":"Fix Wiring Player4"}

### uploadP4
team join uploadP4 oad
team modify uploadP4 prefix {"text":"XXX: Downl"}
team modify uploadP4 suffix {"text":" Data (0/2)"}

### manifoldsP4
team join manifoldsP4 Unl
team modify manifoldsP4 prefix {"text":"Reactor: "}
team modify manifoldsP4 suffix {"text":"ock Manifolds"}

### cardP4
team join cardP4 Swip
team modify cardP4 prefix {"text":"Admin: "}
team modify cardP4 suffix {"text":"e Card"}

### scanP4
team join scanP4 Sub
team modify scanP4 prefix {"text":"MedBay: "}
team modify scanP4 suffix {"text":"mit Scan"}

### reactorP4
team join reactorP4 Reactor
team modify reactorP4 prefix {"text":"Reactor: Start "}

### steeringP4
team join steeringP4 Steer
team modify steeringP4 prefix {"text":"Navigation: Stabilize "}
team modify steeringP4 suffix {"text":"ing"}

### shieldsP4
team join shieldsP4 rime
team modify shieldsP4 prefix {"text":"Shields: P"}
team modify shieldsP4 suffix {"text":" Shields"}

### sampleP4
team join sampleP4 Insp
team modify sampleP4 prefix {"text":"MedBay: "}
team modify sampleP4 suffix {"text":"ect Sample"}

### fuelP4
team join fuelP4 Fu
team modify fuelP4 prefix {"text":"Storage: "}
team modify fuelP4 suffix {"text":"el Engines (0/2)"}

### garbageP4
team join garbageP4 Garb
team modify garbageP4 prefix {"text":"Cafeteria: Empty "}
team modify garbageP4 suffix {"text":"age (0/2)"}

### chuteP4
team join chuteP4 hute
team modify chuteP4 prefix {"text":"O2: Empty C"}
team modify chuteP4 suffix {"text":" (0/2)"}


### powerP4
team join powerP4 Div
team modify powerP4 prefix {"text":"Electrical: "}
team modify powerP4 suffix {"text":"ert Power to XXX (0/2)"}

### courseP4
team join courseP4 Course
team modify courseP4 prefix {"text":"Navigation: Chart "}

### asteroidsP4
team join asteroidsP4 Asteroi
team modify asteroidsP4 prefix {"text":"Weapons: Clear "}
team modify asteroidsP4 suffix {"text":"ds (0/12)"}

### cleanP4
team join cleanP4 O2
team modify cleanP4 prefix {"text":"O2: Clean "}
team modify cleanP4 suffix {"text":" Filter"}

### alignP4
team join alignP4 Engine
team modify alignP4 prefix {"text":"Upper Engine: Align "}
team modify alignP4 suffix {"text":" Output (0/2)"}

### calibrateP4
team join calibrateP4 Calibr
team modify calibrateP4 prefix {"text":"Electrical: "}
team modify calibrateP4 suffix {"text":"ate Distributor"}

### wiringP4
team join wiringP4 Wiring
team modify wiringP4 prefix {"text":"XXX: Fix "}
