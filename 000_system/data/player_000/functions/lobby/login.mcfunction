#> player_000:lobby/login
# @within
#   tag/function minecraft:handler/login_000

execute if entity @e[distance=..128,tag=click_000,type=minecraft:text_display,limit=1] run function player_000:lobby/login/success
execute if entity @s[tag=login_000] run schedule function player_000:lobby/tick 1t