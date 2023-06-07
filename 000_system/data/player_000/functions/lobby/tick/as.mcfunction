#> player_000:lobby/tick/as
# @within
#   function player_000:lobby/tick

data modify storage player_000:temp login set value {}
data modify storage player_000:temp login.Pos set from entity @s Pos
data modify storage player_000:temp login.Rotation set from entity @s Rotation

scoreboard players set # num_000 -1
scoreboard players operation # id_000 = @s id_000
execute store success score # num_000 as @e[x=0.5,y=1.0,z=0.5,distance=..0,tag=storage_000,predicate=player_000:data/match] run data modify storage player_000:temp login set from entity @s Item.tag.000.player.login

execute if score # num_000 matches 1 run function player_000:lobby/login/loaded