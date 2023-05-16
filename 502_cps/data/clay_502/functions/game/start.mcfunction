#> clay_502:game/start
# @within
#   function clay_502:**

summon armor_stand 4992.0 0.0 2000.0 {Tags:["match_admin_502","creating_502"],Invulnerable:1b,Marker:1b,Invisible:1b,ArmorItems:[{id:"minecraft:stone",Count:1b,tag:{match:{}}},{},{},{}]}
execute positioned 4992.0 0.0 2000.0 as @e[tag=match_admin_502,tag=creating_502,sort=nearest,limit=1,distance=..0.5] run function clay_502:game/init