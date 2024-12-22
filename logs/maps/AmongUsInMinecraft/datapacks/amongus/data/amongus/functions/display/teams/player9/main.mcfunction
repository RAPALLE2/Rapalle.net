
team add uploadP9 {"text":"Upload Data Player9"}
team add manifoldsP9 {"text":"Unlock Manifolds Player9"}
team add cardP9 {"text":"Swipe Card Player9"}
team add scanP9 {"text":"Submit Scan Player9"}
team add reactorP9 {"text":"Start Reactor Player9"}
team add steeringP9 {"text":"Stabilize Steering Player9"}
team add shieldsP9 {"text":"Prime Shields Player9"}
team add sampleP9 {"text":"Inspect Sample Player9"}
team add fuelP9 {"text":"Fuel Engines Player9"}
team add garbageP9 {"text":"Empty Garbage Player9"}
team add chuteP9 {"text":"Empty Chute Player9"}
team add powerP9 {"text":"Divert Power Player9"}
team add courseP9 {"text":"Chart Course Player9"}
team add asteroidsP9 {"text":"Clear Asteroids Player9"}
team add cleanP9 {"text":"Clean O2 Filter Player9"}
team add alignP9 {"text":"Align Engine Output Player9"}
team add calibrateP9 {"text":"Calibrate Distributor Player9"}
team add wiringP9 {"text":"Fix Wiring Player9"}

### uploadP9
team join uploadP9 ata
team modify uploadP9 prefix {"text":"XXX: Download D"}
team modify uploadP9 suffix {"text":" (0/2)"}

### manifoldsP9
team join manifoldsP9 Manif
team modify manifoldsP9 prefix {"text":"Reactor: Unlock "}
team modify manifoldsP9 suffix {"text":"olds"}

### cardP9
team join cardP9 wip
team modify cardP9 prefix {"text":"Admin: S"}
team modify cardP9 suffix {"text":"e Card"}

### scanP9
team join scanP9 bmit
team modify scanP9 prefix {"text":"MedBay: Su"}
team modify scanP9 suffix {"text":" Scan"}

### reactorP9
team join reactorP9 eactor
team modify reactorP9 prefix {"text":"Reactor: Start R"}

### steeringP9
team join steeringP9 Stabil
team modify steeringP9 prefix {"text":"Navigation: "}
team modify steeringP9 suffix {"text":"ize Steering"}

### shieldsP9
team join shieldsP9 Shie
team modify shieldsP9 prefix {"text":"Shields: Prime "}
team modify shieldsP9 suffix {"text":"lds"}

### sampleP9
team join sampleP9 Sam
team modify sampleP9 prefix {"text":"MedBay: Inspect "}
team modify sampleP9 suffix {"text":"ple"}

### fuelP9
team join fuelP9 ines
team modify fuelP9 prefix {"text":"Storage: Fuel Eng"}
team modify fuelP9 suffix {"text":" (0/2)"}

### garbageP9
team join garbageP9 age
team modify garbageP9 prefix {"text":"Cafeteria: Empty Garb"}
team modify garbageP9 suffix {"text":" (0/2)"}

### chuteP9
team join chuteP9 pty
team modify chuteP9 prefix {"text":"O2: Em"}
team modify chuteP9 suffix {"text":" Chute (0/2)"}


### powerP9
team join powerP9 ower
team modify powerP9 prefix {"text":"Electrical: Divert P"}
team modify powerP9 suffix {"text":" to XXX (0/2)"}

### courseP9
team join courseP9 hart
team modify courseP9 prefix {"text":"Navigation: C"}
team modify courseP9 suffix {"text":" Course"}

### asteroidsP9
team join asteroidsP9 roids
team modify asteroidsP9 prefix {"text":"Weapons: Clear Aste"}
team modify asteroidsP9 suffix {"text":" (0/12)"}

### cleanP9
team join cleanP9 ilter
team modify cleanP9 prefix {"text":"O2: Clean O2 F"}

### alignP9
team join alignP9 Outpu
team modify alignP9 prefix {"text":"Upper Engine: Align Engine "}
team modify alignP9 suffix {"text":"t (0/2)"}

### calibrateP9
team join calibrateP9 Distributor
team modify calibrateP9 prefix {"text":"Electrical: Calibrate "}

### wiringP9
team join wiringP9 ring
team modify wiringP9 prefix {"text":"XXX: Fix Wi"}
