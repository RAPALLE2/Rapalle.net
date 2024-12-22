
team add uploadP7 {"text":"Upload Data Player7"}
team add manifoldsP7 {"text":"Unlock Manifolds Player7"}
team add cardP7 {"text":"Swipe Card Player7"}
team add scanP7 {"text":"Submit Scan Player7"}
team add reactorP7 {"text":"Start Reactor Player7"}
team add steeringP7 {"text":"Stabilize Steering Player7"}
team add shieldsP7 {"text":"Prime Shields Player7"}
team add sampleP7 {"text":"Inspect Sample Player7"}
team add fuelP7 {"text":"Fuel Engines Player7"}
team add garbageP7 {"text":"Empty Garbage Player7"}
team add chuteP7 {"text":"Empty Chute Player7"}
team add powerP7 {"text":"Divert Power Player7"}
team add courseP7 {"text":"Chart Course Player7"}
team add asteroidsP7 {"text":"Clear Asteroids Player7"}
team add cleanP7 {"text":"Clean O2 Filter Player7"}
team add alignP7 {"text":"Align Engine Output Player7"}
team add calibrateP7 {"text":"Calibrate Distributor Player7"}
team add wiringP7 {"text":"Fix Wiring Player7"}

### uploadP7
team join uploadP7 Dat
team modify uploadP7 prefix {"text":"XXX: Download "}
team modify uploadP7 suffix {"text":"a (0/2)"}

### manifoldsP7
team join manifoldsP7 Manifol
team modify manifoldsP7 prefix {"text":"Reactor: Unlock "}
team modify manifoldsP7 suffix {"text":"ds"}

### cardP7
team join cardP7 Car
team modify cardP7 prefix {"text":"Admin: Swipe "}
team modify cardP7 suffix {"text":"d"}

### scanP7
team join scanP7 can
team modify scanP7 prefix {"text":"MedBay: Submit S"}

### reactorP7
team join reactorP7 Reac
team modify reactorP7 prefix {"text":"Reactor: Start "}
team modify reactorP7 suffix {"text":"tor"}

### steeringP7
team join steeringP7 Stabiliz
team modify steeringP7 prefix {"text":"Navigation: "}
team modify steeringP7 suffix {"text":"e Steering"}

### shieldsP7
team join shieldsP7 Shield
team modify shieldsP7 prefix {"text":"Shields: Prime "}
team modify shieldsP7 suffix {"text":"s"}

### sampleP7
team join sampleP7 Sampl
team modify sampleP7 prefix {"text":"MedBay: Inspect "}
team modify sampleP7 suffix {"text":"e"}

### fuelP7
team join fuelP7 ngines
team modify fuelP7 prefix {"text":"Storage: Fuel E"}
team modify fuelP7 suffix {"text":" (0/2)"}

### garbageP7
team join garbageP7 rbage
team modify garbageP7 prefix {"text":"Cafeteria: Empty Ga"}
team modify garbageP7 suffix {"text":" (0/2)"}

### chuteP7
team join chuteP7 te
team modify chuteP7 prefix {"text":"O2: Empty Chu"}
team modify chuteP7 suffix {"text":" (0/2)"}


### powerP7
team join powerP7 Powe
team modify powerP7 prefix {"text":"Electrical: Divert "}
team modify powerP7 suffix {"text":"r to XXX (0/2)"}

### courseP7
team join courseP7 Cou
team modify courseP7 prefix {"text":"Navigation: Chart "}
team modify courseP7 suffix {"text":"rse"}

### asteroidsP7
team join asteroidsP7 Aste
team modify asteroidsP7 prefix {"text":"Weapons: Clear "}
team modify asteroidsP7 suffix {"text":"roids (0/12)"}

### cleanP7
team join cleanP7 Filt
team modify cleanP7 prefix {"text":"O2: Clean O2 "}
team modify cleanP7 suffix {"text":"er"}

### alignP7
team join alignP7 Eng
team modify alignP7 prefix {"text":"Upper Engine: Align "}
team modify alignP7 suffix {"text":"ine Output (0/2)"}

### calibrateP7
team join calibrateP7 Cal
team modify calibrateP7 prefix {"text":"Electrical: "}
team modify calibrateP7 suffix {"text":"ibrate Distributor"}

### wiringP7
team join wiringP7 Wir
team modify wiringP7 prefix {"text":"XXX: Fix "}
team modify wiringP7 suffix {"text":"ing"}
