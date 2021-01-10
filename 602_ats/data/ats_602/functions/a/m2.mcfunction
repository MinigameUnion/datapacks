fill 6059 81 13 6061 81 13 minecraft:air
scoreboard players set $602 gamemode_602 2
scoreboard players set $602 a_602 1
scoreboard players set $602 e_602 20
team add 602 [{"text":"ATS Player"}]
team modify 602 color green
team modify 602 friendlyFire false

function ats_602:bar/set

tellraw @a [{"text":"[INFO]","color":"aqua","bold":true},{"text":"30秒後に、アニマル塔戦闘でゲームが始まります。参加希望者は当ゲームのロビーから門の奥の空間へ移動してください。","color":"white"}]

tellraw @a [{"text":"//GameMode:","bold":true},{"text":"Basic","color":"green"}]
tellraw @a [{"text":"//MemberLimit:","bold":true},{"text":"20","color":"white"}]

schedule function ats_602:mem/main 30s append