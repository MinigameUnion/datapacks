#> clay_502:spectator/join
# @within
#   function clay_502:game/tick/playing

tp @s ~ ~ ~ ~ ~
tag @s add spectating_502
tag @s add ticking_502
tag @s remove join_spec_502

team join cps_spectator_502
#effect give @s invisibility infinite 0 true

scoreboard players operation @s type_502 = #ADMIN type_502

tellraw @a[tag=ticking_502] [{"selector":"@s","color":"yellow"},{"text":" が観戦中","color":"gray"}]