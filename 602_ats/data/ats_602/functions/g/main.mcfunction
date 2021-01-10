data remove storage ats_602:item tag
execute if score $602 gamemode_602 matches 1 run function ats_602:g/1
execute if score $602 gamemode_602 matches 2 run function ats_602:g/2
execute if score $602 gamemode_602 matches 3 run function ats_602:g/3

#data modify block 6000 62 0 Items[{Slot:0b}] merge from storage ats_602:item
#loot give @a[limit=1,tag=shooter_602] mine 6000 62 0 minecraft:air{dynamic:1b}
