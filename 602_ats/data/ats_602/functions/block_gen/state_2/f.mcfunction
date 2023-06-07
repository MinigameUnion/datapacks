execute as @a[team=GreenTeam] positioned as @s run function ats_602:p/g/intro
#execute as @a[team=RedTeam] positioned as @s run function ats_602:p/g/intro
#execute as @a[team=BlueTeam] positioned as @s run function ats_602:p/g/intro

scoreboard players set $602 pId_602 0
scoreboard players reset $gen602 a_602
bossbar set score_602 players @a[scores={playing_000=602}]
execute unless score $602 gamemode_602 matches 1 run function ats_602:block_gen/emerald/set

scoreboard players set $602 a_602 3
