execute align xyz run particle minecraft:block glass ~0.8625 ~0.3125 ~0.5 0.05 0.1 0.05 0 15 normal
scoreboard players set #0 property_501 0
execute if score #BREAKABLE num_501 matches 1 run data remove block ~ ~ ~ Items[{Slot:0b}]