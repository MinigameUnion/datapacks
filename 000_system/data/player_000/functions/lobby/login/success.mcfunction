#> player_000:lobby/login/success
# @within
#   function player_000:lobby/login

tag @s add login_000

data modify storage player_000:temp login set value {}
data modify storage player_000:temp login.Pos set from entity @s Pos
data modify storage player_000:temp login.Rotation set from entity @s Rotation

scoreboard players operation # id_000 = @s id_000
execute as @e[x=0.5,y=1.0,z=0.5,distance=..0,tag=storage_000,predicate=player_000:data/match] run data modify entity @s Item.tag.000.player.login set from storage player_000:temp login