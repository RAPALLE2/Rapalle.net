
team add uploadP3 {"text":"Upload Data Player3"}
team add manifoldsP3 {"text":"Unlock Manifolds Player3"}
team add cardP3 {"text":"Swipe Card Player3"}
team add scanP3 {"text":"Submit Scan Player3"}
team add reactorP3 {"text":"Start Reactor Player3"}
team add steeringP3 {"text":"Stabilize Steering Player3"}
team add shieldsP3 {"text":"Prime Shields Player3"}
team add sampleP3 {"text":"Inspect Sample Player3"}
team add fuelP3 {"text":"Fuel Engines Player3"}
team add garbageP3 {"text":"Empty Garbage Player3"}
team add chuteP3 {"text":"Empty Chute Player3"}
team add powerP3 {"text":"Divert Power Player3"}
team add courseP3 {"text":"Chart Course Player3"}
team add asteroidsP3 {"text":"Clear Asteroids Player3"}
team add cleanP3 {"text":"Clean O2 Filter Player3"}
team add alignP3 {"text":"Align Engine Output Player3"}
team add calibrateP3 {"text":"Calibrate Distributor Player3"}
team add wiringP3 {"text":"Fix Wiring Player3"}

### uploadP3
team join uploadP3 lo
team modify uploadP3 prefix {"text":"XXX: Down"}
team modify uploadP3 suffix {"text":"ad Data (0/2)"}

### manifoldsP3
team join manifoldsP3 Unlo
team modify manifoldsP3 prefix {"text":"Reactor: "}
team modify manifoldsP3 suffix {"text":"ck Manifolds"}

### cardP3
team join cardP3 ipe
team modify cardP3 prefix {"text":"Admin: Sw"}
team modify cardP3 suffix {"text":" Card"}

### scanP3
team join scanP3 Subm
team modify scanP3 prefix {"text":"MedBay: "}
team modify scanP3 suffix {"text":"it Scan"}

### reactorP3
team join reactorP3 Sta
team modify reactorP3 prefix {"text":"Reactor: "}
team modify reactorP3 suffix {"text":"rt Reactor"}

### steeringP3
team join steeringP3 Steeri
team modify steeringP3 prefix {"text":"Navigation: Stabilize "}
team modify steeringP3 suffix {"text":"ng"}

### shieldsP3
team join shieldsP3 Pri
team modify shieldsP3 prefix {"text":"Shields: "}
team modify shieldsP3 suffix {"text":"me Shields"}

### sampleP3
team join sampleP3 Inspe
team modify sampleP3 prefix {"text":"MedBay: "}
team modify sampleP3 suffix {"text":"ct Sample"}

### fuelP3
team join fuelP3 uel
team modify fuelP3 prefix {"text":"Storage: F"}
team modify fuelP3 suffix {"text":" Engines (0/2)"}

### garbageP3
team join garbageP3 Garba
team modify garbageP3 prefix {"text":"Cafeteria: Empty "}
team modify garbageP3 suffix {"text":"ge (0/2)"}

### chuteP3
team join chuteP3 Chu
team modify chuteP3 prefix {"text":"O2: Empty "}
team modify chuteP3 suffix {"text":"te (0/2)"}


### powerP3
team join powerP3 Dive
team modify powerP3 prefix {"text":"Electrical: "}
team modify powerP3 suffix {"text":"rt Power to XXX (0/2)"}

### courseP3
team join courseP3 Cha
team modify courseP3 prefix {"text":"Navigation: "}
team modify courseP3 suffix {"text":"rt Course"}

### asteroidsP3
team join asteroidsP3 Asteroid
team modify asteroidsP3 prefix {"text":"Weapons: Clear "}
team modify asteroidsP3 suffix {"text":"s (0/12)"}

### cleanP3
team join cleanP3 Cle
team modify cleanP3 prefix {"text":"O2: "}
team modify cleanP3 suffix {"text":"an O2 Filter"}

### alignP3
team join alignP3 Ali
team modify alignP3 prefix {"text":"Upper Engine: "}
team modify alignP3 suffix {"text":"gn Engine Output (0/2)"}

### calibrateP3
team join calibrateP3 Calibra
team modify calibrateP3 prefix {"text":"Electrical: "}
team modify calibrateP3 suffix {"text":"te Distributor"}

### wiringP3
team join wiringP3 ix
team modify wiringP3 prefix {"text":"XXX: F"}
team modify wiringP3 suffix {"text":" Wiring"}
