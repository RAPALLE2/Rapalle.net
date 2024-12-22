
scoreboard objectives setdisplay sidebar.team.white display_settings

### join team
team join impostors Impostors
team join confirm_ejects Ejects
team join emerg_meets Meetings
team join anonymous_votes Votes
team join emerg_cd Cooldown
team join vote_time Time
team join player_speed Speed
team join kill_cd Kill
team join kill_distance Distance
team join visual_tasks Visual
team join common_tasks Common
team join long_tasks Long
team join short_tasks Short

#give @p dark_oak_sign{BlockEntityTag:{Text3:"{\"text\":\"+\",\"color\":\"white\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players add emerg_cd cng.settings 5\"}}",id:"Sign"}}

### static content

### team prefix
team modify confirm_ejects prefix {"text":"Confirm "}
team modify emerg_meets prefix {"text":"Emergency "}
team modify anonymous_votes prefix {"text":"Anonymous "}
team modify emerg_cd prefix {"text":"Emergency "}
team modify vote_time prefix {"text":"Voting "}
team modify player_speed prefix {"text":"Player "}
team modify kill_distance prefix {"text":"Kill "}


### team suffix
team modify kill_cd suffix {"text":" Cooldown"}
team modify visual_tasks suffix {"text":" Tasks"}
team modify common_tasks suffix {"text":" Tasks"}
team modify long_tasks suffix {"text":" Tasks"}
team modify short_tasks suffix {"text":" Tasks"}


function amongus:settings/display/all
