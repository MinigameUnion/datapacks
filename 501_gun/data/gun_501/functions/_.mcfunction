execute positioned ^-1 ^-1 ^-25 facing entity @s feet run tp @s ~ ~ ~ ~ ~
execute store result score #X num_501 run data get entity @s Rotation[0] 100
execute store result score #Y num_501 run data get entity @s Rotation[1] 100

tp @s ~ ~ ~ ~ ~
execute store result score #X ope_501 run data get entity @s Rotation[0] 100
execute store result score #Y ope_501 run data get entity @s Rotation[1] 100

execute positioned ^1 ^1 ^-25 facing entity @s feet run tp @s ~ ~ ~ ~ ~
execute store result score #X rot_501 run data get entity @s Rotation[0] 100
execute store result score #Y rot_501 run data get entity @s Rotation[1] 100

tellraw @a [{"text":"0:["},{"score":{"objective":"num_501","name":"#X"}},{"text":","},{"score":{"objective":"num_501","name":"#Y"}},{"text":"]"}]
tellraw @a [{"text":"1:["},{"score":{"objective":"ope_501","name":"#X"}},{"text":","},{"score":{"objective":"ope_501","name":"#Y"}},{"text":"]"}]
tellraw @a [{"text":"2:["},{"score":{"objective":"rot_501","name":"#X"}},{"text":","},{"score":{"objective":"rot_501","name":"#Y"}},{"text":"]"}]