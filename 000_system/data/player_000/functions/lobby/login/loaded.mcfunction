#> player_000:lobby/login/loaded
# @within
#   function player_000:lobby/tick/as

tag @s remove login_000
scoreboard players operation # id_000 = @s id_000
execute as @e[x=0.5,y=1.0,z=0.5,distance=..0,tag=storage_000,predicate=player_000:data/match] run data remove entity @s Item.tag.000.player.login

execute unless entity @a[tag=login_000] run schedule clear player_000:lobby/tick

function player_000:lobby/text_display/reload
schedule function player_000:lobby/text_display/reload 1s append
schedule function player_000:lobby/text_display/reload 2s append
schedule function player_000:lobby/text_display/reload 3s append
schedule function player_000:lobby/text_display/reload 4s append
schedule function player_000:lobby/text_display/reload 5s append