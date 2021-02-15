execute if data entity @s ArmorItems[0].tag.rotation[{random:1b}] if predicate clay_502:random/50 run tp @s ~ ~ ~ ~180 ~
execute store result score #RANGE num_000 run data get entity @s ArmorItems[0].tag.rotation[1].random.max 10
function tool_000:random
execute store result score #MIN num_502 run data get entity @s ArmorItems[0].tag.rotation[1].random.min 10
scoreboard players remove #RANDOM num_000 900
scoreboard players operation #RANDOM num_000 > #Rotation[1]_min num_502

execute store result entity @s Rotation[1] float 0.1 run scoreboard players operation #RANDOM num_000 += #MIN num_502
execute rotated as @s run function tool_000:get_vector
summon item ~ ~0.5 ~ {Tags:["summoning_502","clay_502"],Invulnerable:1b,Item:{id:"minecraft:clay_ball",Count:1b,tag:{CustomModelData:5000}},PickupDelay:-32768s,Age:0s,OnGround:0b,Passengers:[{id:"minecraft:slime",Tags:["summoning_502","clay_502","target_501"],Size:0,wasOnGround:0b,DeathLootTable:"minecraft:empty",NoAI:1b,Silent:1b,Invulnerable:1b,ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}]}]}
execute as @e[type=item,tag=summoning_502,tag=clay_502,sort=nearest,distance=..0.5,limit=1] run function clay_502:clay/motion

scoreboard players operation @e[type=slime,tag=summoning_502,tag=clay_502,sort=nearest,distance=..0.75,limit=1] match_id_502 = #ADMIN match_id_502
tag @e[type=slime,tag=summoning_502,tag=clay_502,sort=nearest,distance=..0.75,limit=1] remove summoning_502

#tellraw @a [{"nbt": "Pos","entity": "0-0-0-0-2"}]

playsound minecraft:entity.firework_rocket.shoot neutral @a[tag=ticking_502] ~ ~ ~ 10 1.5 0