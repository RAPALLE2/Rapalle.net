
team add uploadP1 {"text":"Upload Data Player1"}
team add manifoldsP1 {"text":"Unlock Manifolds Player1"}
team add cardP1 {"text":"Swipe Card Player1"}
team add scanP1 {"text":"Submit Scan Player1"}
team add reactorP1 {"text":"Start Reactor Player1"}
team add steeringP1 {"text":"Stabilize Steering Player1"}
team add shieldsP1 {"text":"Prime Shields Player1"}
team add sampleP1 {"text":"Inspect Sample Player1"}
team add fuelP1 {"text":"Fuel Engines Player1"}
team add garbageP1 {"text":"Empty Garbage Player1"}
team add chuteP1 {"text":"Empty Chute Player1"}
team add powerP1 {"text":"Divert Power Player1"}
team add courseP1 {"text":"Chart Course Player1"}
team add asteroidsP1 {"text":"Clear Asteroids Player1"}
team add cleanP1 {"text":"Clean O2 Filter Player1"}
team add alignP1 {"text":"Align Engine Output Player1"}
team add calibrateP1 {"text":"Calibrate Distributor Player1"}
team add wiringP1 {"text":"Fix Wiring Player1"}

### uploadP1
team join uploadP1 load
team modify uploadP1 prefix {"text":"XXX: Down"}
team modify uploadP1 suffix {"text":" Data (0/2)"}

### manifoldsP1
team join manifoldsP1 Unlock
team modify manifoldsP1 prefix {"text":"Reactor: "}
team modify manifoldsP1 suffix {"text":" Manifolds"}

### cardP1
team join cardP1 Swipe
team modify cardP1 prefix {"text":"Admin: "}
team modify cardP1 suffix {"text":" Card"}

### scanP1
team join scanP1 Submit
team modify scanP1 prefix {"text":"MedBay: "}
team modify scanP1 suffix {"text":" Scan"}

### reactorP1
team join reactorP1 Start
team modify reactorP1 prefix {"text":"Reactor: "}
team modify reactorP1 suffix {"text":" Reactor"}

### steeringP1
team join steeringP1 Steering
team modify steeringP1 prefix {"text":"Navigation: Stabilize "}

### shieldsP1
team join shieldsP1 Prime
team modify shieldsP1 prefix {"text":"Shields: "}
team modify shieldsP1 suffix {"text":" Shields"}

### sampleP1
team join sampleP1 Inspect
team modify sampleP1 prefix {"text":"MedBay: "}
team modify sampleP1 suffix {"text":" Sample"}

### fuelP1
team join fuelP1 Fuel
team modify fuelP1 prefix {"text":"Storage: "}
team modify fuelP1 suffix {"text":" Engines (0/2)"}

### garbageP1
team join garbageP1 Garbage
team modify garbageP1 prefix {"text":"Cafeteria: Empty "}
team modify garbageP1 suffix {"text":" (0/2)"}

### chuteP1
team join chuteP1 Chute
team modify chuteP1 prefix {"text":"O2: Empty "}
team modify chuteP1 suffix {"text":" (0/2)"}


### powerP1
team join powerP1 Divert
team modify powerP1 prefix {"text":"Electrical: "}
team modify powerP1 suffix {"text":" Power to XXX (0/2)"}

### courseP1
team join courseP1 Chart
team modify courseP1 prefix {"text":"Navigation: "}
team modify courseP1 suffix {"text":" Course"}

### asteroidsP1
team join asteroidsP1 Clear
team modify asteroidsP1 prefix {"text":"Weapons: "}
team modify asteroidsP1 suffix {"text":" Asteroids (0/12)"}

### cleanP1
team join cleanP1 Clean
team modify cleanP1 prefix {"text":"O2: "}
team modify cleanP1 suffix {"text":" O2 Filter"}

### alignP1
team join alignP1 Align
team modify alignP1 prefix {"text":"Upper Engine: "}
team modify alignP1 suffix {"text":" Engine Output (0/2)"}

### calibrateP1
team join calibrateP1 Calibrate
team modify calibrateP1 prefix {"text":"Electrical: "}
team modify calibrateP1 suffix {"text":" Distributor"}

### wiringP1
team join wiringP1 Fix
team modify wiringP1 prefix {"text":"XXX: "}
team modify wiringP1 suffix {"text":" Wiring"}
