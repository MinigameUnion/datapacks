team join GreenTeam @s
tag @s remove join_team_602
execute if score $602 gamemode_602 matches 1 unless score $602 pId_602 matches 12.. as @a[sort=random,limit=1,tag=!join_team_602] run function ats_602:mem/join
execute if score $602 gamemode_602 matches 2 unless score $602 pId_602 matches 20.. as @a[sort=random,limit=1,tag=!join_team_602] run function ats_602:mem/join
execute if score $602 gamemode_602 matches 3 unless score $602 pId_602 matches 30.. as @a[sort=random,limit=1,tag=!join_team_602] run function ats_602:mem/join
