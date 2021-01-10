execute if entity @s[tag=mooshroom_602] run function ats_602:tile/type/mooshroom/1

execute unless score $602 gamemode_602 matches 1 run function ats_602:tile/score
#scoreboard players operation @s a_602 >< @e[sort=nearest,limit=1,distance=..0.1] a_602

execute unless entity @s[tag=cat_602] if entity @e[sort=nearest,limit=1,tag=!cat_602,distance=..0.1] run scoreboard players operation @s a1_602 >< @e[sort=nearest,limit=1,distance=..0.1] a1_602
execute unless entity @s[tag=cat_602] if entity @e[sort=nearest,limit=1,tag=cat_602,distance=..0.1] unless score @e[sort=nearest,limit=1,tag=cat_602,distance=..0.1] z1_602 matches 1 run scoreboard players operation @e[sort=nearest,limit=1,distance=..0.1] a1_602 = @s a1_602
execute unless entity @s[tag=cat_602] if entity @e[sort=nearest,limit=1,tag=cat_602,scores={z1_602=1},distance=..0.1] run scoreboard players operation @s a1_602 >< @e[sort=nearest,limit=1,distance=..0.1] a1_602

execute if entity @s[tag=cat_602] run function ats_602:tile/type/cat/1
execute if entity @s[tag=polar_bear_602,scores={a1_602=101..}] run function ats_602:tile/type/polar_bear/1
execute if entity @s[tag=bee_602,scores={a1_602=1..180}] run scoreboard players set @s z1_602 1
execute if entity @s[tag=parrot_602] unless entity @s[scores={z1_602=1}] if entity @e[sort=nearest,limit=1,scores={mulScore1_602=4..},distance=..0.1] run function ats_602:tile/type/parrot/1
execute if entity @s[tag=dolphin_602] unless entity @s[scores={z1_602=1}] run function ats_602:tile/type/dolphin/1


execute if entity @e[sort=nearest,limit=1,tag=!stop_602,distance=..0.1] run scoreboard players operation @s b_602 >< @e[sort=nearest,limit=1,distance=..0.1] b_602
execute if entity @e[sort=nearest,limit=1,tag=stop_602,distance=..0.1] run scoreboard players operation @e[sort=nearest,limit=1,distance=..0.1] b_602 = @s b_602

execute store result entity @s Rotation[0] float 0.01 run scoreboard players get @s b_602
playsound minecraft:entity.armor_stand.break neutral @a[team=602] ~ ~ ~ 1.0 1.0 0.1
execute as @e[sort=nearest,limit=1,distance=..0.1] run function ats_602:hit/0_0
