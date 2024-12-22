
team add uploadP6 {"text":"Upload Data Player6"}
team add manifoldsP6 {"text":"Unlock Manifolds Player6"}
team add cardP6 {"text":"Swipe Card Player6"}
team add scanP6 {"text":"Submit Scan Player6"}
team add reactorP6 {"text":"Start Reactor Player6"}
team add steeringP6 {"text":"Stabilize Steering Player6"}
team add shieldsP6 {"text":"Prime Shields Player6"}
team add sampleP6 {"text":"Inspect Sample Player6"}
team add fuelP6 {"text":"Fuel Engines Player6"}
team add garbageP6 {"text":"Empty Garbage Player6"}
team add chuteP6 {"text":"Empty Chute Player6"}
team add powerP6 {"text":"Divert Power Player6"}
team add courseP6 {"text":"Chart Course Player6"}
team add asteroidsP6 {"text":"Clear Asteroids Player6"}
team add cleanP6 {"text":"Clean O2 Filter Player6"}
team add alignP6 {"text":"Align Engine Output Player6"}
team add calibrateP6 {"text":"Calibrate Distributor Player6"}
team add wiringP6 {"text":"Fix Wiring Player6"}

### uploadP6
team join uploadP6 Data
team modify uploadP6 prefix {"text":"XXX: Download "}
team modify uploadP6 suffix {"text":" (0/2)"}

### manifoldsP6
team join manifoldsP6 Manifold
team modify manifoldsP6 prefix {"text":"Reactor: Unlock "}
team modify manifoldsP6 suffix {"text":"s"}

### cardP6
team join cardP6 Card
team modify cardP6 prefix {"text":"Admin: Swipe "}

### scanP6
team join scanP6 Sca
team modify scanP6 prefix {"text":"MedBay: Submit "}
team modify scanP6 suffix {"text":"n"}

### reactorP6
team join reactorP6 React
team modify reactorP6 prefix {"text":"Reactor: Start "}
team modify reactorP6 suffix {"text":"or"}

### steeringP6
team join steeringP6 Stabilize
team modify steeringP6 prefix {"text":"Navigation: "}
team modify steeringP6 suffix {"text":" Steering"}

### shieldsP6
team join shieldsP6 Shields
team modify shieldsP6 prefix {"text":"Shields: Prime "}

### sampleP6
team join sampleP6 Sample
team modify sampleP6 prefix {"text":"MedBay: Inspect "}

### fuelP6
team join fuelP6 Engines
team modify fuelP6 prefix {"text":"Storage: Fuel "}
team modify fuelP6 suffix {"text":" (0/2)"}

### garbageP6
team join garbageP6 arbage
team modify garbageP6 prefix {"text":"Cafeteria: Empty G"}
team modify garbageP6 suffix {"text":" (0/2)"}

### chuteP6
team join chuteP6 hu
team modify chuteP6 prefix {"text":"O2: Empty C"}
team modify chuteP6 suffix {"text":"te (0/2)"}


### powerP6
team join powerP6 Power
team modify powerP6 prefix {"text":"Electrical: Divert "}
team modify powerP6 suffix {"text":" to XXX (0/2)"}

### courseP6
team join courseP6 Cour
team modify courseP6 prefix {"text":"Navigation: Chart "}
team modify courseP6 suffix {"text":"se"}

### asteroidsP6
team join asteroidsP6 Aster
team modify asteroidsP6 prefix {"text":"Weapons: Clear "}
team modify asteroidsP6 suffix {"text":"oids (0/12)"}

### cleanP6
team join cleanP6 Filte
team modify cleanP6 prefix {"text":"O2: Clean O2 "}
team modify cleanP6 suffix {"text":"r"}

### alignP6
team join alignP6 Engi
team modify alignP6 prefix {"text":"Upper Engine: Align "}
team modify alignP6 suffix {"text":"ne Output (0/2)"}

### calibrateP6
team join calibrateP6 Cali
team modify calibrateP6 prefix {"text":"Electrical: "}
team modify calibrateP6 suffix {"text":"brate Distributor"}

### wiringP6
team join wiringP6 Wiri
team modify wiringP6 prefix {"text":"XXX: Fix "}
team modify wiringP6 suffix {"text":"ng"}
