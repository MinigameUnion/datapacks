fill 6059 81 13 6061 81 13 minecraft:air
scoreboard players set $602 gamemode_602 2
scoreboard players set $602 a_602 1
scoreboard players set $602 e_602 20
scoreboard players set $timer_602 a_602 10
execute if score $o_5_602 a_602 matches -2147483648..2147483647 store result storage ats_602:main wait int 1 run scoreboard players get $o_5_602 a_602
execute unless score $o_5_602 a_602 matches -2147483648..2147483647 run data modify storage ats_602:main wait set value 40
function ats_602:bossbar/set

tellraw @a[scores={playing_000=602}] [{"text":"[INFO-DEBUG]","color":"black","bold":false},{"text":"アニマル塔戦闘でゲームが始まります。","color":"white"}]

tellraw @a[scores={playing_000=602}] [{"text":"//GameMode:","bold":true},{"text":"Basic","color":"green"}]
tellraw @a[scores={playing_000=602}] [{"text":"//MemberLimit:","bold":true},{"text":"20","color":"white"}]