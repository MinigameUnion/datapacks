bossbar set 0_602 name [{"text":"Score : "},{"score":{"name":"$602","objective":"score_602"}}]
bossbar set 0_602 color white
execute store result bossbar 0_602 max run scoreboard players get $602 e_602
execute store result bossbar 0_602 value run scoreboard players get $602 e_602
bossbar set 0_602 visible true