fill 6059 81 13 6061 81 13 minecraft:air
scoreboard players set $602 gamemode_602 3
scoreboard players set $602 a_602 1
scoreboard players set $602 e_602 30
scoreboard players set $timer_602 a_602 600
execute if score $o_5_602 a_602 matches -2147483648..2147483647 store result storage ats_602:main wait int 1 run scoreboard players get $o_5_602 a_602
execute unless score $o_5_602 a_602 matches -2147483648..2147483647 run data modify storage ats_602:main wait set value 40

function ats_602:bossbar/set

tellraw @a[scores={playing_000=602}] [{"text":"[INFO]","color":"aqua","bold":true},{"text":"30秒後に、アニマル塔戦闘でゲームが始まります。参加希望者は当ゲームのロビーから門の奥の空間へ移動してください。","color":"white"}]

tellraw @a[scores={playing_000=602}] [{"text":"//GameMode:","bold":true},{"text":"Chaos","color":"light_purple"}]
tellraw @a[scores={playing_000=602}] [{"text":"//MemberLimit:","bold":true},{"text":"30","color":"white"}]