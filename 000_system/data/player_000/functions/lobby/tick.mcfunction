#> player_000:lobby/tick
# @within
#   function player_000:lobby/login
#   function player_000:lobby/tick
#   function player_000:lobby/login/loaded

schedule function player_000:lobby/tick 1t

execute as @a[tag=login_000] at @s run function player_000:lobby/tick/as