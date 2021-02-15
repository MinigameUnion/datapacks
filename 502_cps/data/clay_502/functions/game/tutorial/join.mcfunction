advancement revoke @s only clay_502:picked_gun
execute if entity @a[tag=playing_502,tag=ticking_502,advancements={clay_502:picked_gun=true}] run loot give @s loot clay_502:s1897

tellraw @s ["",{"text":"[Tutorial] ","color":"gold"},{"text":"クレー射撃 チュートリアル","color":"reset"},{"text":" です","color":"gray"}]
tellraw @s ["",{"text":"[Tutorial] ","color":"gold"},{"text":"銃の扱い方,クレーの撃ち方","color":"reset"},{"text":"などを演習します","color":"gray"}]
tellraw @s ["",{"text":"[Tutorial] ","color":"gold"},{"text":"使用するキーは","color":"gray"},{"text":"体力,満腹度の上あたり","color":"reset"},{"text":"に表示されます","color":"gray"}]

#scoreboard players operation #ID num_502 = @s id_000
#execute as @e[x=0.5,y=1.0,z=0.5,distance=..0,tag=storage_000] if score @s id_000 = #ID num_502 run data modify storage clay_502:storage match.player append from entity @s Item.tag.SkullOwner.Name
