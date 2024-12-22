
### create scoreboard objectives

scoreboard objectives add display_settings dummy {"text":"Map Settings:"}
scoreboard objectives add settings dummy {"text":"Settings"}
scoreboard objectives add data dummy {"text":"Game Data"}
scoreboard objectives add join trigger {"text":"Join Among Us"}
scoreboard objectives add left minecraft.custom:minecraft.leave_game {"text":"Left Game"}
scoreboard objectives add color dummy {"text":"Ingame Color"}
scoreboard objectives add sabotage dummy {"text":"Sabotage"}
scoreboard objectives add vote trigger {"text":"Vote"}
scoreboard objectives add bossbar dummy {"text":"Bossbar Stuff"}
scoreboard objectives add kill minecraft.used:minecraft.warped_fungus_on_a_stick {"text":"Kill"}
scoreboard objectives add vote_result dummy {"text":"Vote Result"}
scoreboard objectives add showOvM dummy {"text":"Show Overview Map"}
scoreboard objectives add kill_cd dummy {"text":"Kill Cooldown"}
scoreboard objectives add report minecraft.used:minecraft.carrot_on_a_stick {"text":"Report"}
scoreboard objectives add showSabotage dummy {"text":"Show Sabotage Map"}
scoreboard objectives add rng dummy
scoreboard objectives add meetings.num dummy
scoreboard objectives add cng.settings trigger
scoreboard objectives add website trigger
scoreboard objectives add spectate trigger
scoreboard objectives add rick dummy
scoreboard objectives add changeRole trigger

scoreboard objectives add comms_sab dummy {"text":"Tasks"}

scoreboard objectives add shlds.primed dummy
scoreboard objectives add scan.timer dummy
scoreboard objectives add vent.enter minecraft.used:minecraft.knowledge_book

scoreboard objectives add dtp1 dummy {"text":"Tasks"}
scoreboard objectives add dtp2 dummy {"text":"Tasks"}
scoreboard objectives add dtp3 dummy {"text":"Tasks"}
scoreboard objectives add dtp4 dummy {"text":"Tasks"}
scoreboard objectives add dtp5 dummy {"text":"Tasks"}
scoreboard objectives add dtp6 dummy {"text":"Tasks"}
scoreboard objectives add dtp7 dummy {"text":"Tasks"}
scoreboard objectives add dtp8 dummy {"text":"Tasks"}
scoreboard objectives add dtp9 dummy {"text":"Tasks"}
scoreboard objectives add dtp10 dummy {"text":"Tasks"}

scoreboard objectives add open dummy
scoreboard objectives add doorA trigger
scoreboard objectives add doorB trigger
scoreboard objectives add doorC trigger
scoreboard objectives add doorD trigger
scoreboard objectives add doorE trigger
scoreboard objectives add doorF trigger
scoreboard objectives add doorG trigger
scoreboard objectives add activate_sab trigger

#tasks
scoreboard objectives add caf.upload dummy {"text":"Upload Data Cafeteria"}
scoreboard objectives add com.upload dummy {"text":"Upload Data Communications"}
scoreboard objectives add elec.upload dummy {"text":"Upload Data Electrical"}
scoreboard objectives add nav.upload dummy {"text":"Upload Data Navigation"}
scoreboard objectives add weap.upload dummy {"text":"Upload Data Weapons"}
scoreboard objectives add reac.manifolds dummy {"text":"Unlock Manifolds"}
scoreboard objectives add adm.card dummy {"text":"Swipe Card"}
scoreboard objectives add med.scan dummy {"text":"Submit Scan"}
scoreboard objectives add reac.start dummy {"text":"Start Reactor"}
scoreboard objectives add nav.steering dummy {"text":"Stabilize Steering"}
scoreboard objectives add shld.prime dummy {"text":"Prime Shields"}
scoreboard objectives add med.sample dummy {"text":"Inspect Sample"}
scoreboard objectives add low.fuel dummy {"text":"Fuel Lower Engin"}
scoreboard objectives add up.fuel dummy {"text":"Fuel Upper Engin"}
scoreboard objectives add caf.garbage dummy {"text":"Empty Garbage"}
scoreboard objectives add o2.chute dummy {"text":"Empty Chute"}
scoreboard objectives add com.power dummy {"text":"Divert Power to Communications"}
scoreboard objectives add low.power dummy {"text":"Divert Power to Lower Engin"}
scoreboard objectives add nav.power dummy {"text":"Divert Power to Navigation"}
scoreboard objectives add o2.power dummy {"text":"Divert Power to O2"}
scoreboard objectives add weap.power dummy {"text":"Divert Power to Weapons"}
scoreboard objectives add sec.power dummy {"text":"Divert Power to Security"}
scoreboard objectives add shld.power dummy {"text":"Divert Power to Shields"}
scoreboard objectives add up.power dummy {"text":"Divert Power to Upper Engin"}
scoreboard objectives add weap.clear dummy {"text":"Clear Asteroids"}
scoreboard objectives add o2.clean dummy {"text":"Clean O2 Filter"}
scoreboard objectives add nav.course dummy {"text":"Chart Course"}
scoreboard objectives add elec.calibrate dummy {"text":"Calibrate Distributor"}
scoreboard objectives add up.align dummy {"text":"Align Engine Output"}
scoreboard objectives add adm.wiring dummy {"text":"Fix Wiring Admin"}
scoreboard objectives add caf.wiring dummy {"text":"Fix Wiring Cafeteria"}
scoreboard objectives add elec.wiring dummy {"text":"Fix Wiring Electrical"}
scoreboard objectives add nav.wiring dummy {"text":"Fix Wiring Navigation"}
scoreboard objectives add sec.wiring dummy {"text":"Fix Wiring Security"}
scoreboard objectives add strg.wiring dummy {"text":"Fix Wiring Storage"}
#sub tasks
scoreboard objectives add caf.upload.0 dummy
scoreboard objectives add com.upload.0 dummy
scoreboard objectives add elec.upload.0 dummy
scoreboard objectives add nav.upload.0 dummy
scoreboard objectives add weap.upload.0 dummy
scoreboard objectives add caf.upload.1 dummy
scoreboard objectives add com.upload.1 dummy
scoreboard objectives add elec.upload.1 dummy
scoreboard objectives add nav.upload.1 dummy
scoreboard objectives add weap.upload.1 dummy
scoreboard objectives add low.fuel.0 dummy
scoreboard objectives add low.fuel.1 dummy
scoreboard objectives add up.fuel.0 dummy
scoreboard objectives add up.fuel.1 dummy
scoreboard objectives add caf.garbage.0 dummy
scoreboard objectives add caf.garbage.1 dummy
scoreboard objectives add o2.chute.0 dummy
scoreboard objectives add o2.chute.1 dummy
scoreboard objectives add com.power.0 dummy
scoreboard objectives add low.power.0 dummy
scoreboard objectives add nav.power.0 dummy
scoreboard objectives add o2.power.0 dummy
scoreboard objectives add weap.power.0 dummy
scoreboard objectives add sec.power.0 dummy
scoreboard objectives add shld.power.0 dummy
scoreboard objectives add up.power.0 dummy
scoreboard objectives add com.power.1 dummy
scoreboard objectives add low.power.1 dummy
scoreboard objectives add nav.power.1 dummy
scoreboard objectives add o2.power.1 dummy
scoreboard objectives add weap.power.1 dummy
scoreboard objectives add sec.power.1 dummy
scoreboard objectives add shld.power.1 dummy
scoreboard objectives add up.power.1 dummy
scoreboard objectives add up.align.0 dummy
scoreboard objectives add up.align.1 dummy

scoreboard objectives add ani.chute.0 dummy
scoreboard objectives add ani.chute.1 dummy
scoreboard objectives add lever.chute trigger
scoreboard objectives add ani.garbage.0 dummy
scoreboard objectives add ani.garbage.1 dummy
scoreboard objectives add lever.garbage trigger

scoreboard objectives add inspect trigger
scoreboard objectives add start.sample trigger
scoreboard objectives add timer.sample dummy

scoreboard objectives add course.a trigger
scoreboard objectives add course.b trigger
scoreboard objectives add course.c trigger

scoreboard objectives add steering trigger

scoreboard objectives add download.caf trigger
scoreboard objectives add download.com trigger
scoreboard objectives add download.elec trigger
scoreboard objectives add download.nav trigger
scoreboard objectives add download.weap trigger
scoreboard objectives add upload.caf trigger
scoreboard objectives add upload.com trigger
scoreboard objectives add upload.elec trigger
scoreboard objectives add upload.nav trigger
scoreboard objectives add upload.weap trigger

scoreboard objectives add up.fill trigger
scoreboard objectives add low.fill trigger
scoreboard objectives add up.refuel trigger
scoreboard objectives add low.refuel trigger

scoreboard objectives add com.power.0a trigger
scoreboard objectives add low.power.0a trigger
scoreboard objectives add nav.power.0a trigger
scoreboard objectives add o2.power.0a trigger
scoreboard objectives add weap.power.0a trigger
scoreboard objectives add sec.power.0a trigger
scoreboard objectives add shld.power.0a trigger
scoreboard objectives add up.power.0a trigger

scoreboard objectives add com.power.1a trigger
scoreboard objectives add low.power.1a trigger
scoreboard objectives add nav.power.1a trigger
scoreboard objectives add o2.power.1a trigger
scoreboard objectives add weap.power.1a trigger
scoreboard objectives add sec.power.1a trigger
scoreboard objectives add shld.power.1a trigger
scoreboard objectives add up.power.1a trigger

scoreboard objectives add failed.manifolds trigger
scoreboard objectives add manifoldsA trigger
scoreboard objectives add manifoldsB trigger
scoreboard objectives add manifoldsC trigger
scoreboard objectives add manifoldsD trigger
scoreboard objectives add manifoldsE trigger
scoreboard objectives add manifoldsF trigger
scoreboard objectives add manifoldsG trigger
scoreboard objectives add manifoldsH trigger
scoreboard objectives add manifoldsI trigger
scoreboard objectives add manifoldsJ trigger

scoreboard objectives add rnA dummy
scoreboard objectives add rnB dummy
scoreboard objectives add rnC dummy
scoreboard objectives add rnD dummy
scoreboard objectives add rnE dummy
scoreboard objectives add rnF dummy
scoreboard objectives add rnG dummy
scoreboard objectives add rnH dummy
scoreboard objectives add rnI dummy
scoreboard objectives add rnJ dummy


scoreboard objectives add temp dummy
scoreboard objectives add posX dummy
scoreboard objectives add posY dummy
scoreboard objectives add posZ dummy
scoreboard objectives add rotation0 dummy
scoreboard objectives add rotation1 dummy
scoreboard objectives add failed dummy
scoreboard objectives add check dummy
scoreboard objectives add busy dummy

scoreboard objectives add fail.card dummy
scoreboard objectives add success.card dummy

scoreboard objectives add card1 trigger
scoreboard objectives add card2 trigger
scoreboard objectives add card3 trigger
scoreboard objectives add card4 trigger
scoreboard objectives add card5 trigger
scoreboard objectives add card6 trigger
scoreboard objectives add card7 trigger
scoreboard objectives add card8 trigger
scoreboard objectives add card9 trigger
scoreboard objectives add card10 trigger
scoreboard objectives add card11 trigger
scoreboard objectives add card12 trigger
scoreboard objectives add card13 trigger
scoreboard objectives add card14 trigger
scoreboard objectives add card15 trigger
scoreboard objectives add card16 trigger
scoreboard objectives add card17 trigger
scoreboard objectives add card18 trigger
scoreboard objectives add card19 trigger
scoreboard objectives add card20 trigger
scoreboard objectives add card21 trigger
scoreboard objectives add card22 trigger
scoreboard objectives add card23 trigger
scoreboard objectives add card24 trigger
scoreboard objectives add card25 trigger
scoreboard objectives add card26 trigger
scoreboard objectives add card27 trigger
scoreboard objectives add card28 trigger

scoreboard objectives add leafs.cleaned dummy

scoreboard objectives add leafA trigger
scoreboard objectives add leafB trigger
scoreboard objectives add leafC trigger
scoreboard objectives add leafD trigger
scoreboard objectives add leafE trigger
scoreboard objectives add leafF trigger
scoreboard objectives add leafG trigger
scoreboard objectives add leafH trigger
scoreboard objectives add leafI trigger
scoreboard objectives add leafJ trigger
scoreboard objectives add leafK trigger
scoreboard objectives add leafL trigger
scoreboard objectives add leafM trigger
scoreboard objectives add leafN trigger
scoreboard objectives add leafO trigger

scoreboard objectives add shldA trigger
scoreboard objectives add shldB trigger
scoreboard objectives add shldC trigger
scoreboard objectives add shldD trigger
scoreboard objectives add shldE trigger
scoreboard objectives add shldF trigger
scoreboard objectives add shldG trigger

scoreboard objectives add wireA dummy
scoreboard objectives add wireB dummy
scoreboard objectives add wireC dummy
scoreboard objectives add wireD dummy
scoreboard objectives add wireE dummy
scoreboard objectives add wireF dummy
scoreboard objectives add wireG dummy
scoreboard objectives add wireH dummy

scoreboard objectives add connectorA trigger
scoreboard objectives add connectorB trigger
scoreboard objectives add connectorC trigger
scoreboard objectives add connectorD trigger
scoreboard objectives add connectorE trigger
scoreboard objectives add connectorF trigger
scoreboard objectives add connectorG trigger
scoreboard objectives add connectorH trigger

scoreboard objectives add wireA.connected dummy
scoreboard objectives add wireB.connected dummy
scoreboard objectives add wireC.connected dummy
scoreboard objectives add wireD.connected dummy

scoreboard objectives add prog.reactor dummy
scoreboard objectives add succ.reactor dummy
scoreboard objectives add btn.reac.a trigger
scoreboard objectives add btn.reac.b trigger
scoreboard objectives add btn.reac.c trigger
scoreboard objectives add btn.reac.d trigger
scoreboard objectives add btn.reac.e trigger

scoreboard objectives add o2.values.a dummy
scoreboard objectives add o2.values.b dummy
scoreboard objectives add o2.values.c dummy
scoreboard objectives add o2.values.d dummy
scoreboard objectives add o2.values.e dummy
scoreboard objectives add o2.values.f dummy

scoreboard objectives add o2.input.a dummy
scoreboard objectives add o2.input.b dummy
scoreboard objectives add o2.input.c dummy
scoreboard objectives add o2.input.d dummy
scoreboard objectives add o2.input.e dummy
scoreboard objectives add o2.input.f dummy

scoreboard objectives add o2.btn.a trigger
scoreboard objectives add o2.btn.b trigger
scoreboard objectives add o2.btn.c trigger
scoreboard objectives add o2.btn.d trigger
scoreboard objectives add o2.btn.e trigger
scoreboard objectives add o2.btn.g trigger
scoreboard objectives add o2.btn.f trigger
scoreboard objectives add o2.btn.h trigger
scoreboard objectives add o2.btn.i trigger

scoreboard objectives add o2.btn.del trigger
scoreboard objectives add o2.btn.ent trigger

scoreboard objectives add ani.timer dummy
scoreboard objectives add btn.align trigger
scoreboard objectives add vent.pos dummy
scoreboard objectives add row.align dummy
scoreboard objectives add extend.align dummy
scoreboard objectives add cali.btn trigger
scoreboard objectives add rng dummy
scoreboard objectives add pos dummy
scoreboard objectives add manifolds.prog dummy
scoreboard objectives add reac.btn.num trigger
scoreboard objectives add reactor.prog dummy
scoreboard objectives add o2.alarm.prog dummy
scoreboard objectives add o2.btn.put trigger
scoreboard objectives add bossbar dummy
scoreboard objectives add weap.clear.count dummy

scoreboard objectives add rock.tick dummy
scoreboard objectives add destroy.rock trigger
scoreboard objectives add rock.pos dummy
scoreboard objectives add rock.row dummy
scoreboard objectives add fix.wiring dummy


### display_settings
scoreboard players set Impostors display_settings 12
scoreboard players set Ejects display_settings 11
scoreboard players set Meetings display_settings 10
scoreboard players set Cooldown display_settings 9
scoreboard players set Votes display_settings 8
scoreboard players set Time display_settings 7
scoreboard players set Speed display_settings 6
scoreboard players set Kill display_settings 5
scoreboard players set Distance display_settings 4
scoreboard players set Visual display_settings 3
scoreboard players set Common display_settings 2
scoreboard players set Long display_settings 1
scoreboard players set Short display_settings 0

### preset display
scoreboard players set max_player settings 10
scoreboard players set impostors settings 2
scoreboard players set confirm_ejects settings 0
scoreboard players set anonymous_votes settings 2
scoreboard players set emerg_meets settings 1
scoreboard players set emerg_cd settings 15
scoreboard players set vote_time settings 180
scoreboard players set player_speed settings 1
scoreboard players set kill_cd settings 30
scoreboard players set kill_distance settings 0
scoreboard players set visual_tasks settings 0
scoreboard players set common_tasks settings 1
scoreboard players set long_tasks settings 1
scoreboard players set short_tasks settings 2

### preset Data
scoreboard players set player_count data 0
scoreboard players set max_player data 10
scoreboard players set enough_player data 0
scoreboard players set too_much_player data 0
scoreboard players set join_possible data 1
scoreboard players set starting data 0
scoreboard players set game_start data 0
scoreboard players set game_started data 0
scoreboard players set impostor_count data 0
scoreboard players set start_cd data 5
scoreboard players set tick data 0
scoreboard players set tasks_done data 0
scoreboard players set crewmateWin data 0
scoreboard players set impostorWin data 0

### sabotage door
scoreboard players set doorA open 1
scoreboard players set doorB open 1
scoreboard players set doorC open 1
scoreboard players set doorD open 1
scoreboard players set doorE open 1
scoreboard players set doorF open 1
scoreboard players set doorG open 1


### constants

scoreboard players set minus_one temp -1
scoreboard players set ten temp 10
