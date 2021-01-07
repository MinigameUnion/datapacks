###
###インベーダーの移動
###

##移動
execute if entity @s[scores={Direction_101=1}] positioned ~10 ~-1000 ~ as @e[tag=Invader_101,scores={Group_101=1,Move_101=0},limit=3,sort=nearest] store success score @s Move_101 at @s run tp @s ~0.3 ~ ~
execute if entity @s[scores={Direction_101=2}] as @e[tag=Invader_101,scores={Group_101=1,Move_101=0}] store success score @s Move_101 at @s run tp @s ~ ~-0.9 ~
execute if entity @s[scores={Direction_101=3}] positioned ~-10 ~-1000 ~ as @e[tag=Invader_101,scores={Group_101=1,Move_101=0},limit=3,sort=nearest] store success score @s Move_101 at @s run tp @s ~-0.4 ~ ~
execute if entity @s[scores={Direction_101=4}] as @e[tag=Invader_101,scores={Group_101=1,Move_101=0}] store success score @s Move_101 at @s run tp @s ~ ~-0.9 ~

##トーチカの破壊
execute at @e[tag=Invader_101,scores={Group_101=1}] run fill ~ ~1.5 ~ ~ ~1.7 ~ air replace #spaceinvaders_101:torchka

##レインボー
execute store result score @s operation_101 if entity @e[tag=Invader_101,scores={Group_101=1}]
execute if entity @s[scores={Direction_101=3,operation_101=1}] at @e[tag=Zombie_101,scores={Group_101=1}] run particle minecraft:dust 1 0 0 2 ~ ~1.5 ~ 0 0 0 0.1 10
execute if entity @s[scores={Direction_101=3,operation_101=1}] at @e[tag=Zombie_101,scores={Group_101=1}] run particle minecraft:dust 1 1 0 2 ~ ~1.5 ~ 0 0 0 0.1 10
execute if entity @s[scores={Direction_101=3,operation_101=1}] at @e[tag=Zombie_101,scores={Group_101=1}] run particle minecraft:dust 0 1 0 2 ~ ~1.5 ~ 0 0 0 0.1 10
execute if entity @s[scores={Direction_101=3,operation_101=1}] at @e[tag=Zombie_101,scores={Group_101=1}] run particle minecraft:dust 0 1 1 2 ~ ~1.5 ~ 0 0 0 0.1 10
execute if entity @s[scores={Direction_101=3,operation_101=1}] at @e[tag=Zombie_101,scores={Group_101=1}] run particle minecraft:dust 0 0 1 2 ~ ~1.5 ~ 0 0 0 0.1 10
execute if entity @s[scores={Direction_101=3,operation_101=1}] at @e[tag=Zombie_101,scores={Group_101=1}] run particle minecraft:dust 1 0 1 2 ~ ~1.5 ~ 0 0 0 0.1 10