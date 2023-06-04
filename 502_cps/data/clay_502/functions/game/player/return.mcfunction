#> clay_502:game/player/return
# @within
#   function clay_502:game/player/login

data modify storage tool_000:api teleport set from storage clay_502:storage lobby.return
function tool_000:teleport
execute if entity @s[tag=gun_501] run function gun_501:leave
function clay_502:player/leave