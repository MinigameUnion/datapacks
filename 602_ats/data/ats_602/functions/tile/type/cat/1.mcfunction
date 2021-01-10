execute if entity @s[scores={z1_602=1}] run scoreboard players operation @s a1_602 >< @e[sort=nearest,limit=1,distance=..0.1] a1_602
execute unless entity @s[scores={z1_602=1}] run scoreboard players operation @e[sort=nearest,limit=1,distance=..0.1] a1_602 = @s a1_602
