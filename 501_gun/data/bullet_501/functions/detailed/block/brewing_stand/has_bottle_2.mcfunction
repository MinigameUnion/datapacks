execute align xyz run particle minecraft:block glass ~0.2500 ~0.3125 ~0.7500 0.05 0.1 0.05 0 15 normal
scoreboard players set #2 property_501 0
execute if score #BREAKABLE num_501 matches 1 run data remove block ~ ~ ~ Items[{Slot:2b}]