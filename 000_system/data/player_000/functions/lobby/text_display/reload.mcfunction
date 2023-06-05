#> player_000:lobby/text_display/reload
# @within
#   function player_000:lobby/login/loaded

execute as @e[tag=click_000,type=minecraft:text_display] run data modify entity @s view_range set value 0.0f
schedule function player_000:lobby/text_display/schedule 1t