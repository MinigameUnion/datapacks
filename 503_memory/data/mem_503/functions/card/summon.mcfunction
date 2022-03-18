#> mem_503:card/summon
# @within
#   function mem_503:game/summon

execute if score #Facing num_503 matches 0 run summon item_frame ~ ~ ~ {Tags:["card_503","playing_503","point_503","init_503"],Facing:0b,Fixed:1b,Invisible:1b,Silent:1b,Invulnerable:1b,Item:{id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:5001,mem_503:{clickable:1b,card:{}}}}}
execute if score #Facing num_503 matches 1 run summon item_frame ~ ~ ~ {Tags:["card_503","playing_503","point_503","init_503"],Facing:1b,Fixed:1b,Invisible:1b,Silent:1b,Invulnerable:1b,Item:{id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:5001,mem_503:{clickable:1b,card:{}}}}}
execute if score #Facing num_503 matches 2 run summon item_frame ~ ~ ~ {Tags:["card_503","playing_503","point_503","init_503"],Facing:2b,Fixed:1b,Invisible:1b,Silent:1b,Invulnerable:1b,Item:{id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:5001,mem_503:{clickable:1b,card:{}}}}}
execute if score #Facing num_503 matches 3 run summon item_frame ~ ~ ~ {Tags:["card_503","playing_503","point_503","init_503"],Facing:3b,Fixed:1b,Invisible:1b,Silent:1b,Invulnerable:1b,Item:{id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:5001,mem_503:{clickable:1b,card:{}}}}}
execute if score #Facing num_503 matches 4 run summon item_frame ~ ~ ~ {Tags:["card_503","playing_503","point_503","init_503"],Facing:4b,Fixed:1b,Invisible:1b,Silent:1b,Invulnerable:1b,Item:{id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:5001,mem_503:{clickable:1b,card:{}}}}}
execute if score #Facing num_503 matches 5 run summon item_frame ~ ~ ~ {Tags:["card_503","playing_503","point_503","init_503"],Facing:5b,Fixed:1b,Invisible:1b,Silent:1b,Invulnerable:1b,Item:{id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:5001,mem_503:{clickable:1b,card:{}}}}}