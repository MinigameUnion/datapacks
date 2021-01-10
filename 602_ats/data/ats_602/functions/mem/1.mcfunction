scoreboard players add $602 pId_602 1
scoreboard players add $602 a1_602 1
scoreboard players operation @s pId_602 = $602 pId_602
bossbar set 0_602 players @s
clear @s minecraft:slime_ball{item602:1b}
execute if score $602 gamemode_602 matches 1 unless score $602 pId_602 matches 12.. as @a[sort=random,limit=1,team=602] unless entity @s[scores={pId_602=1..}] run function ats_602:mem/1

execute if score $602 gamemode_602 matches 2 unless score $602 pId_602 matches 20.. as @a[sort=random,limit=1,team=602] unless entity @s[scores={pId_602=1..}] run function ats_602:mem/1

execute if score $602 gamemode_602 matches 3 unless score $602 pId_602 matches 30.. as @a[sort=random,limit=1,team=602] unless entity @s[scores={pId_602=1..}] run function ats_602:mem/1
