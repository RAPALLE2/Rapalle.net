
team add uploadP2 {"text":"Upload Data Player2"}
team add manifoldsP2 {"text":"Unlock Manifolds Player2"}
team add cardP2 {"text":"Swipe Card Player2"}
team add scanP2 {"text":"Submit Scan Player2"}
team add reactorP2 {"text":"Start Reactor Player2"}
team add steeringP2 {"text":"Stabilize Steering Player2"}
team add shieldsP2 {"text":"Prime Shields Player2"}
team add sampleP2 {"text":"Inspect Sample Player2"}
team add fuelP2 {"text":"Fuel Engines Player2"}
team add garbageP2 {"text":"Empty Garbage Player2"}
team add chuteP2 {"text":"Empty Chute Player2"}
team add powerP2 {"text":"Divert Power Player2"}
team add courseP2 {"text":"Chart Course Player2"}
team add asteroidsP2 {"text":"Clear Asteroids Player2"}
team add cleanP2 {"text":"Clean O2 Filter Player2"}
team add alignP2 {"text":"Align Engine Output Player2"}
team add calibrateP2 {"text":"Calibrate Distributor Player2"}
team add wiringP2 {"text":"Fix Wiring Player2"}

### uploadP2
team join uploadP2 loa
team modify uploadP2 prefix {"text":"XXX: Down"}
team modify uploadP2 suffix {"text":"d Data (0/2)"}

### manifoldsP2
team join manifoldsP2 Unloc
team modify manifoldsP2 prefix {"text":"Reactor: "}
team modify manifoldsP2 suffix {"text":"k Manifolds"}

### cardP2
team join cardP2 wipe
team modify cardP2 prefix {"text":"Admin: S"}
team modify cardP2 suffix {"text":" Card"}

### scanP2
team join scanP2 Submi
team modify scanP2 prefix {"text":"MedBay: "}
team modify scanP2 suffix {"text":"t Scan"}

### reactorP2
team join reactorP2 Star
team modify reactorP2 prefix {"text":"Reactor: "}
team modify reactorP2 suffix {"text":"t Reactor"}

### steeringP2
team join steeringP2 Steerin
team modify steeringP2 prefix {"text":"Navigation: Stabilize "}
team modify steeringP2 suffix {"text":"g"}

### shieldsP2
team join shieldsP2 Prim
team modify shieldsP2 prefix {"text":"Shields: "}
team modify shieldsP2 suffix {"text":"e Shields"}

### sampleP2
team join sampleP2 Inspec
team modify sampleP2 prefix {"text":"MedBay: "}
team modify sampleP2 suffix {"text":"t Sample"}

### fuelP2
team join fuelP2 Fue
team modify fuelP2 prefix {"text":"Storage: "}
team modify fuelP2 suffix {"text":"l Engines (0/2)"}

### garbageP2
team join garbageP2 Garbag
team modify garbageP2 prefix {"text":"Cafeteria: Empty "}
team modify garbageP2 suffix {"text":"e (0/2)"}

### chuteP2
team join chuteP2 Chut
team modify chuteP2 prefix {"text":"O2: Empty "}
team modify chuteP2 suffix {"text":"e (0/2)"}


### powerP2
team join powerP2 Diver
team modify powerP2 prefix {"text":"Electrical: "}
team modify powerP2 suffix {"text":"t Power to XXX (0/2)"}

### courseP2
team join courseP2 Char
team modify courseP2 prefix {"text":"Navigation: "}
team modify courseP2 suffix {"text":"t Course"}

### asteroidsP2
team join asteroidsP2 Asteroids
team modify asteroidsP2 prefix {"text":"Weapons: Clear "}
team modify asteroidsP2 suffix {"text":" (0/12)"}

### cleanP2
team join cleanP2 Clea
team modify cleanP2 prefix {"text":"O2: "}
team modify cleanP2 suffix {"text":"n O2 Filter"}

### alignP2
team join alignP2 Alig
team modify alignP2 prefix {"text":"Upper Engine: "}
team modify alignP2 suffix {"text":"n Engine Output (0/2)"}

### calibrateP2
team join calibrateP2 Calibrat
team modify calibrateP2 prefix {"text":"Electrical: "}
team modify calibrateP2 suffix {"text":"e Distributor"}

### wiringP2
team join wiringP2 Fi
team modify wiringP2 prefix {"text":"XXX: "}
team modify wiringP2 suffix {"text":"x Wiring"}
