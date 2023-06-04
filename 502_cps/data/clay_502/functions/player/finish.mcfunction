#> clay_502:player/finish
# @within
#   function clay_502:game/delete

tp @s ~ ~ ~ ~ ~
execute if entity @s[tag=gun_501] run function gun_501:leave
function clay_502:player/leave