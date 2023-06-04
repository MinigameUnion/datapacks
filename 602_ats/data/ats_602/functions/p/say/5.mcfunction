scoreboard players set #RANGE num_000 12
function tool_000:random
execute if score #RANDOM num_000 matches 0..1 run tellraw @a[tag=join_area_602] [{"text":"@"},{"selector": "@s"},{"text": "(ニワトリ) "},{"text":"コケ"}]
execute if score #RANDOM num_000 matches 2..3 run tellraw @a[tag=join_area_602] [{"text":"@"},{"selector": "@s"},{"text": "(ニワトリ) "},{"text":"コッコ"}]
execute if score #RANDOM num_000 matches 4..5 run tellraw @a[tag=join_area_602] [{"text":"@"},{"selector": "@s"},{"text": "(ニワトリ) "},{"text":"コケケ"}]
execute if score #RANDOM num_000 matches 6..7 run tellraw @a[tag=join_area_602] [{"text":"@"},{"selector": "@s"},{"text": "(ニワトリ) "},{"text":"コケー！"}]
execute if score #RANDOM num_000 matches 8..9 run tellraw @a[tag=join_area_602] [{"text":"@"},{"selector": "@s"},{"text": "(ニワトリ) "},{"text":"コッコッコッコ…"}]
execute if score #RANDOM num_000 matches 10 run tellraw @a[tag=join_area_602] [{"text":"@"},{"selector": "@s"},{"text": "(ニワトリ) "},{"text":"コケコッコー！！"}]
execute if score #RANDOM num_000 matches 11 run tellraw @a[tag=join_area_602] [{"text":"@"},{"selector": "@s"},{"text": "(ニワトリ) "},{"text":"クック"}]
