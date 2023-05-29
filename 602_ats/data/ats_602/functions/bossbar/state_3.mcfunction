execute store result bossbar score_602 value run scoreboard players get $602 e_602
#bossbar set score_602 name [{"text":"Score : ","color":"white"},{"score":{"name":"$602","objective":"score_602"}},{"text":" / "},{"text":"残りターン : ","color":"aqua"},{"score":{"name":"$602","objective":"e_602"}}]

execute store result bossbar timer_602 max run data get storage ats_602:main wait
execute store result score $timer_602 a1_602 run data get storage ats_602:main wait
scoreboard players operation $timer_602 a1_602 -= $timer_602 a_602
execute store result bossbar timer_602 value run scoreboard players get $timer_602 a1_602
execute if score $timer_602 a_602 matches 0.. run bossbar set timer_602 name [{"text":"次ターン待機中 : ","color":"blue"},{"score":{"name":"$timer_602","objective":"a_602"},"bold":true}]
execute if score $timer_602 a_602 matches -1 run bossbar set timer_602 name [{"text":"ターン : ","color":"blue"},{"selector":"@a[tag=shooter_602]"}]

bossbar set timer_602 color blue

bossbar set score_602 players @a[tag=in_602]
bossbar set timer_602 players @a[tag=in_602]