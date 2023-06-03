#> clay_502:player/leave
# @within
#   function clay_502:player/finish
#   function clay_502:game/sign/leave_match/clicked

effect clear @s
clear @s
function player_000:experience/reset

scoreboard players reset @s match_id_502
scoreboard players reset @s type_502
scoreboard players reset @s tick_502
tag @s remove delete_502
tag @s remove leave_match_502
tag @s remove spectating_502
tag @s remove playing_502
tag @s remove ticking_502
tag @s remove time_bar_502
tag @s remove restart_502
tag @s remove winner_502

tag @a remove reloaded_502
tag @a remove shot_502
tag @a remove ads_502

team join cps_player_502 @s