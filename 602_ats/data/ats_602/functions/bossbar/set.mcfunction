bossbar set score_602 name [{"text":"Score : ","color":"white"},{"score":{"name":"$602","objective":"score_602"}},{"text":" / "},{"text":"残りターン : ","color":"aqua"},{"score":{"name":"$602","objective":"e_602"}}]
bossbar set score_602 color white
execute store result bossbar score_602 max run scoreboard players get $602 e_602
execute store result bossbar score_602 value run scoreboard players get $602 e_602

bossbar set timer_602 name [{"text":"ゲーム開始まであと : ","color":"green"},{"score":{"name":"$timer_602","objective":"a_602"},"bold":true}]
bossbar set timer_602 color green
execute store result bossbar timer_602 max run scoreboard players get $timer_602 a_602
execute store result bossbar timer_602 value run scoreboard players get $timer_602 a_602

bossbar set timer_602 players @a[scores={playing_000=602}]
bossbar set score_602 visible true
bossbar set timer_602 visible true