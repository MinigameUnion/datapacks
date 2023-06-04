scoreboard players operation $timer_602 a1_602 = $timer_602 a_602
scoreboard players operation $timer_602 a1_602 /= $timer_602 a2_602
execute store result bossbar timer_602 value run scoreboard players get $timer_602 a_602
bossbar set timer_602 name [{"text":"ゲーム開始まであと : ","color":"green"},{"score":{"name":"$timer_602","objective":"a1_602"},"bold":true}]

bossbar set timer_602 players @a[scores={playing_000=602}]