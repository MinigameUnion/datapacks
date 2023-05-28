fill 6059 81 13 6061 81 13 minecraft:air
scoreboard players set $602 gamemode_602 2
scoreboard players set $602 a_602 1
scoreboard players set $602 e_602 20
scoreboard players set $timer_602 a_602 600

function ats_602:bossbar/set

tellraw @a[tag=in_602] [{"text":"[INFO]","color":"aqua","bold":true},{"text":"30秒後に、アニマル塔戦闘でゲームが始まります。参加希望者は当ゲームのロビーから門の奥の空間へ移動してください。","color":"white"}]

tellraw @a[tag=in_602] [{"text":"//GameMode:","bold":true},{"text":"Basic","color":"green"}]
tellraw @a[tag=in_602] [{"text":"//MemberLimit:","bold":true},{"text":"20","color":"white"}]

schedule function ats_602:mem/main 30s append