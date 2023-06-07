#> player_000:lobby/text_display/reload/entity_tick
# @within
#   advancement player_000:lobby/text_display/reload/entity_tick

execute as @e[tag=click_000,type=minecraft:text_display] run data modify entity @s view_range set value 0.0f
schedule function player_000:lobby/text_display/reload/schedule 1t

advancement revoke @s only player_000:lobby/text_display/reload/entity_tick