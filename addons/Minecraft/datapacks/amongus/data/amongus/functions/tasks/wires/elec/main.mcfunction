
execute if score @s failed matches 1.. run function amongus:tasks/wires/elec/end

execute if score @s connectorA matches 1 if score @s wireA = @s wireE if score @s connectorE matches 1 run scoreboard players set @s wireA.connected 1
execute if score @s connectorA matches 1 if score @s wireA = @s wireE if score @s connectorE matches 1 run scoreboard players add @s connectorE 1
execute if score @s connectorA matches 1 if score @s wireA = @s wireF if score @s connectorF matches 1 run scoreboard players set @s wireA.connected 1
execute if score @s connectorA matches 1 if score @s wireA = @s wireF if score @s connectorF matches 1 run scoreboard players add @s connectorF 1
execute if score @s connectorA matches 1 if score @s wireA = @s wireG if score @s connectorG matches 1 run scoreboard players set @s wireA.connected 1
execute if score @s connectorA matches 1 if score @s wireA = @s wireG if score @s connectorG matches 1 run scoreboard players add @s connectorG 1
execute if score @s connectorA matches 1 if score @s wireA = @s wireH if score @s connectorH matches 1 run scoreboard players set @s wireA.connected 1
execute if score @s connectorA matches 1 if score @s wireA = @s wireH if score @s connectorH matches 1 run scoreboard players add @s connectorH 1
execute if score @s connectorA matches 1 if score @s wireA.connected matches 1 run function amongus:tasks/wires/elec/shaft
execute if score @s connectorA matches 1 if score @s wireA.connected matches 1 run scoreboard players add @s connectorA 1

execute if score @s connectorB matches 1 if score @s wireB = @s wireE if score @s connectorE matches 1 run scoreboard players set @s wireB.connected 1
execute if score @s connectorB matches 1 if score @s wireB = @s wireE if score @s connectorE matches 1 run scoreboard players add @s connectorE 1
execute if score @s connectorB matches 1 if score @s wireB = @s wireF if score @s connectorF matches 1 run scoreboard players set @s wireB.connected 1
execute if score @s connectorB matches 1 if score @s wireB = @s wireF if score @s connectorF matches 1 run scoreboard players add @s connectorF 1
execute if score @s connectorB matches 1 if score @s wireB = @s wireG if score @s connectorG matches 1 run scoreboard players set @s wireB.connected 1
execute if score @s connectorB matches 1 if score @s wireB = @s wireG if score @s connectorG matches 1 run scoreboard players add @s connectorG 1
execute if score @s connectorB matches 1 if score @s wireB = @s wireH if score @s connectorH matches 1 run scoreboard players set @s wireB.connected 1
execute if score @s connectorB matches 1 if score @s wireB = @s wireH if score @s connectorH matches 1 run scoreboard players add @s connectorH 1
execute if score @s connectorB matches 1 if score @s wireB.connected matches 1 run function amongus:tasks/wires/elec/shaft
execute if score @s connectorB matches 1 if score @s wireB.connected matches 1 run scoreboard players add @s connectorB 1

execute if score @s connectorC matches 1 if score @s wireC = @s wireE if score @s connectorE matches 1 run scoreboard players set @s wireC.connected 1
execute if score @s connectorC matches 1 if score @s wireC = @s wireE if score @s connectorE matches 1 run scoreboard players add @s connectorE 1
execute if score @s connectorC matches 1 if score @s wireC = @s wireF if score @s connectorF matches 1 run scoreboard players set @s wireC.connected 1
execute if score @s connectorC matches 1 if score @s wireC = @s wireF if score @s connectorF matches 1 run scoreboard players add @s connectorF 1
execute if score @s connectorC matches 1 if score @s wireC = @s wireG if score @s connectorG matches 1 run scoreboard players set @s wireC.connected 1
execute if score @s connectorC matches 1 if score @s wireC = @s wireG if score @s connectorG matches 1 run scoreboard players add @s connectorG 1
execute if score @s connectorC matches 1 if score @s wireC = @s wireH if score @s connectorH matches 1 run scoreboard players set @s wireC.connected 1
execute if score @s connectorC matches 1 if score @s wireC = @s wireH if score @s connectorH matches 1 run scoreboard players add @s connectorH 1
execute if score @s connectorC matches 1 if score @s wireC.connected matches 1 run function amongus:tasks/wires/elec/shaft
execute if score @s connectorC matches 1 if score @s wireC.connected matches 1 run scoreboard players add @s connectorC 1

execute if score @s connectorD matches 1 if score @s wireD = @s wireE if score @s connectorE matches 1 run scoreboard players set @s wireD.connected 1
execute if score @s connectorD matches 1 if score @s wireD = @s wireE if score @s connectorE matches 1 run scoreboard players add @s connectorE 1
execute if score @s connectorD matches 1 if score @s wireD = @s wireF if score @s connectorF matches 1 run scoreboard players set @s wireD.connected 1
execute if score @s connectorD matches 1 if score @s wireD = @s wireF if score @s connectorF matches 1 run scoreboard players add @s connectorF 1
execute if score @s connectorD matches 1 if score @s wireD = @s wireG if score @s connectorG matches 1 run scoreboard players set @s wireD.connected 1
execute if score @s connectorD matches 1 if score @s wireD = @s wireG if score @s connectorG matches 1 run scoreboard players add @s connectorG 1
execute if score @s connectorD matches 1 if score @s wireD = @s wireH if score @s connectorH matches 1 run scoreboard players set @s wireD.connected 1
execute if score @s connectorD matches 1 if score @s wireD = @s wireH if score @s connectorH matches 1 run scoreboard players add @s connectorH 1
execute if score @s connectorD matches 1 if score @s wireD.connected matches 1 run function amongus:tasks/wires/elec/shaft
execute if score @s connectorD matches 1 if score @s wireD.connected matches 1 run scoreboard players add @s connectorD 1

######

###

scoreboard players set temp connectorE 0
execute if score @s connectorE matches 1 run scoreboard players set temp connectorE 1
execute if score temp connectorE matches 1 if score @s connectorA matches 1 run scoreboard players set @s connectorA 0
execute if score temp connectorE matches 1 if score @s connectorA matches 0 run scoreboard players enable @s connectorA
execute if score temp connectorE matches 1 if score @s connectorB matches 1 run scoreboard players set @s connectorB 0
execute if score temp connectorE matches 1 if score @s connectorB matches 0 run scoreboard players enable @s connectorB
execute if score temp connectorE matches 1 if score @s connectorC matches 1 run scoreboard players set @s connectorC 0
execute if score temp connectorE matches 1 if score @s connectorC matches 0 run scoreboard players enable @s connectorC
execute if score temp connectorE matches 1 if score @s connectorD matches 1 run scoreboard players set @s connectorD 0
execute if score temp connectorE matches 1 if score @s connectorD matches 0 run scoreboard players enable @s connectorD
execute if score temp connectorE matches 1 run scoreboard players set @s connectorE 0
execute if score temp connectorE matches 1 run scoreboard players enable @s connectorE

scoreboard players set temp connectorF 0
execute if score @s connectorF matches 1 run scoreboard players set temp connectorF 1
execute if score temp connectorF matches 1 if score @s connectorA matches 1 run scoreboard players set @s connectorA 0
execute if score temp connectorF matches 1 if score @s connectorA matches 0 run scoreboard players enable @s connectorA
execute if score temp connectorF matches 1 if score @s connectorB matches 1 run scoreboard players set @s connectorB 0
execute if score temp connectorF matches 1 if score @s connectorB matches 0 run scoreboard players enable @s connectorB
execute if score temp connectorF matches 1 if score @s connectorC matches 1 run scoreboard players set @s connectorC 0
execute if score temp connectorF matches 1 if score @s connectorC matches 0 run scoreboard players enable @s connectorC
execute if score temp connectorF matches 1 if score @s connectorD matches 1 run scoreboard players set @s connectorD 0
execute if score temp connectorF matches 1 if score @s connectorD matches 0 run scoreboard players enable @s connectorD
execute if score temp connectorF matches 1 run scoreboard players set @s connectorF 0
execute if score temp connectorF matches 1 run scoreboard players enable @s connectorF

scoreboard players set temp connectorG 0
execute if score @s connectorG matches 1 run scoreboard players set temp connectorG 1
execute if score temp connectorG matches 1 if score @s connectorA matches 1 run scoreboard players set @s connectorA 0
execute if score temp connectorG matches 1 if score @s connectorA matches 0 run scoreboard players enable @s connectorA
execute if score temp connectorG matches 1 if score @s connectorB matches 1 run scoreboard players set @s connectorB 0
execute if score temp connectorG matches 1 if score @s connectorB matches 0 run scoreboard players enable @s connectorB
execute if score temp connectorG matches 1 if score @s connectorC matches 1 run scoreboard players set @s connectorC 0
execute if score temp connectorG matches 1 if score @s connectorC matches 0 run scoreboard players enable @s connectorC
execute if score temp connectorG matches 1 if score @s connectorD matches 1 run scoreboard players set @s connectorD 0
execute if score temp connectorG matches 1 if score @s connectorD matches 0 run scoreboard players enable @s connectorD
execute if score temp connectorG matches 1 run scoreboard players set @s connectorG 0
execute if score temp connectorG matches 1 run scoreboard players enable @s connectorG

scoreboard players set temp connectorH 0
execute if score @s connectorH matches 1 run scoreboard players set temp connectorH 1
execute if score temp connectorH matches 1 if score @s connectorA matches 1 run scoreboard players set @s connectorA 0
execute if score temp connectorH matches 1 if score @s connectorA matches 0 run scoreboard players enable @s connectorA
execute if score temp connectorH matches 1 if score @s connectorB matches 1 run scoreboard players set @s connectorB 0
execute if score temp connectorH matches 1 if score @s connectorB matches 0 run scoreboard players enable @s connectorB
execute if score temp connectorH matches 1 if score @s connectorC matches 1 run scoreboard players set @s connectorC 0
execute if score temp connectorH matches 1 if score @s connectorC matches 0 run scoreboard players enable @s connectorC
execute if score temp connectorH matches 1 if score @s connectorD matches 1 run scoreboard players set @s connectorD 0
execute if score temp connectorH matches 1 if score @s connectorD matches 0 run scoreboard players enable @s connectorD
execute if score temp connectorH matches 1 run scoreboard players set @s connectorH 0
execute if score temp connectorH matches 1 run scoreboard players enable @s connectorH

####

scoreboard players set temp connectorA 0
execute if score @s connectorA matches 1 if score @s connectorB matches 1 if score @s connectorC matches 1 if score @s connectorD matches 1 run scoreboard players set temp connectorA 1
execute if score temp connectorA matches 1 run scoreboard players set @s connectorA 0
execute if score temp connectorA matches 1 run scoreboard players enable @s connectorA
execute if score temp connectorA matches 1 run scoreboard players set @s connectorB 0
execute if score temp connectorA matches 1 run scoreboard players enable @s connectorB
execute if score temp connectorA matches 1 run scoreboard players set @s connectorC 0
execute if score temp connectorA matches 1 run scoreboard players enable @s connectorC
execute if score temp connectorA matches 1 run scoreboard players set @s connectorD 0
execute if score temp connectorA matches 1 run scoreboard players enable @s connectorD

scoreboard players set temp connectorA 0
execute if score @s connectorA matches 1 if score @s connectorB matches 1 if score @s connectorC matches 1 run scoreboard players set temp connectorA 1
execute if score temp connectorA matches 1 run scoreboard players set @s connectorA 0
execute if score temp connectorA matches 1 run scoreboard players enable @s connectorA
execute if score temp connectorA matches 1 run scoreboard players set @s connectorB 0
execute if score temp connectorA matches 1 run scoreboard players enable @s connectorB
execute if score temp connectorA matches 1 run scoreboard players set @s connectorC 0
execute if score temp connectorA matches 1 run scoreboard players enable @s connectorC
scoreboard players set temp connectorA 0
execute if score @s connectorA matches 1 if score @s connectorC matches 1 if score @s connectorD matches 1 run scoreboard players set temp connectorA 1
execute if score temp connectorA matches 1 run scoreboard players set @s connectorA 0
execute if score temp connectorA matches 1 run scoreboard players enable @s connectorA
execute if score temp connectorA matches 1 run scoreboard players set @s connectorC 0
execute if score temp connectorA matches 1 run scoreboard players enable @s connectorC
execute if score temp connectorA matches 1 run scoreboard players set @s connectorD 0
execute if score temp connectorA matches 1 run scoreboard players enable @s connectorD


scoreboard players set temp connectorB 0
execute if score @s connectorB matches 1 if score @s connectorA matches 1 if score @s connectorD matches 1 run scoreboard players set temp connectorB 1
execute if score temp connectorB matches 1 run scoreboard players set @s connectorB 0
execute if score temp connectorB matches 1 run scoreboard players enable @s connectorB
execute if score temp connectorB matches 1 run scoreboard players set @s connectorA 0
execute if score temp connectorB matches 1 run scoreboard players enable @s connectorA
execute if score temp connectorB matches 1 run scoreboard players set @s connectorD 0
execute if score temp connectorB matches 1 run scoreboard players enable @s connectorD
scoreboard players set temp connectorB 0
execute if score @s connectorB matches 1 if score @s connectorC matches 1 if score @s connectorD matches 1 run scoreboard players set temp connectorB 1
execute if score temp connectorB matches 1 run scoreboard players set @s connectorB 0
execute if score temp connectorB matches 1 run scoreboard players enable @s connectorB
execute if score temp connectorB matches 1 run scoreboard players set @s connectorC 0
execute if score temp connectorB matches 1 run scoreboard players enable @s connectorC
execute if score temp connectorB matches 1 run scoreboard players set @s connectorD 0
execute if score temp connectorB matches 1 run scoreboard players enable @s connectorD

scoreboard players set temp connectorA 0
execute if score @s connectorA matches 1 if score @s connectorB matches 1 run scoreboard players set temp connectorA 1
execute if score temp connectorA matches 1 run scoreboard players set @s connectorA 0
execute if score temp connectorA matches 1 run scoreboard players enable @s connectorA
execute if score temp connectorA matches 1 run scoreboard players set @s connectorB 0
execute if score temp connectorA matches 1 run scoreboard players enable @s connectorB
scoreboard players set temp connectorA 0
execute if score @s connectorA matches 1 if score @s connectorC matches 1 run scoreboard players set temp connectorA 1
execute if score temp connectorA matches 1 run scoreboard players set @s connectorA 0
execute if score temp connectorA matches 1 run scoreboard players enable @s connectorA
execute if score temp connectorA matches 1 run scoreboard players set @s connectorC 0
execute if score temp connectorA matches 1 run scoreboard players enable @s connectorC
scoreboard players set temp connectorA 0
execute if score @s connectorA matches 1 if score @s connectorD matches 1 run scoreboard players set temp connectorA 1
execute if score temp connectorA matches 1 run scoreboard players set @s connectorA 0
execute if score temp connectorA matches 1 run scoreboard players enable @s connectorA
execute if score temp connectorA matches 1 run scoreboard players set @s connectorD 0
execute if score temp connectorA matches 1 run scoreboard players enable @s connectorD

scoreboard players set temp connectorB 0
execute if score @s connectorB matches 1 if score @s connectorC matches 1 run scoreboard players set temp connectorB 1
execute if score temp connectorB matches 1 run scoreboard players set @s connectorB 0
execute if score temp connectorB matches 1 run scoreboard players enable @s connectorB
execute if score temp connectorB matches 1 run scoreboard players set @s connectorC 0
execute if score temp connectorB matches 1 run scoreboard players enable @s connectorC
scoreboard players set temp connectorB 0
execute if score @s connectorB matches 1 if score @s connectorD matches 1 run scoreboard players set temp connectorB 1
execute if score temp connectorB matches 1 run scoreboard players set @s connectorB 0
execute if score temp connectorB matches 1 run scoreboard players enable @s connectorB
execute if score temp connectorB matches 1 run scoreboard players set @s connectorD 0
execute if score temp connectorB matches 1 run scoreboard players enable @s connectorD

scoreboard players set temp connectorC 0
execute if score @s connectorC matches 1 if score @s connectorD matches 1 run scoreboard players set temp connectorC 1
execute if score temp connectorC matches 1 run scoreboard players set @s connectorC 0
execute if score temp connectorC matches 1 run scoreboard players enable @s connectorC
execute if score temp connectorC matches 1 run scoreboard players set @s connectorD 0
execute if score temp connectorC matches 1 run scoreboard players enable @s connectorD

scoreboard players set temp connectorA 0
scoreboard players set temp connectorB 0
scoreboard players set temp connectorC 0
######

execute if score @s wireA.connected matches 1 if score @s wireB.connected matches 1 if score @s wireC.connected matches 1 if score @s wireD.connected matches 1 if score tick data matches 10 run function amongus:tasks/wires/elec/end
