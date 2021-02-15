tag @e[type=item_frame,tag=gun_stand_502,sort=nearest,limit=1,distance=..8,nbt={ItemRotation:3b}] add clicked_502

data modify storage clay_502:storage Item set from entity @e[type=item_frame,limit=1,distance=..8,tag=clicked_502] Item

execute store success score # num_502 if data entity @s SelectedItem
execute if score # num_502 matches 0 store success score # num_502 if entity @s[advancements={clay_502:picked_gun=true}]
data modify entity @e[type=item_frame,limit=1,distance=..8,tag=clicked_502] ItemRotation set value 2b
execute if score # num_502 matches 0 run tag @e[type=item_frame,limit=1,distance=..8,tag=clicked_502] remove gun_stand_502
execute if score # num_502 matches 0 run kill @e[type=item_frame,limit=1,distance=..8,tag=clicked_502]

tag @e[type=item_frame,limit=1,distance=..8,tag=clicked_502] remove clicked_502

execute if score # num_502 matches 0 run data modify storage inv_000:api SelectedItem set from storage clay_502:storage Item
execute if score # num_502 matches 0 run function inv_000:selecteditem/restore

advancement revoke @s only clay_502:clicked_frame