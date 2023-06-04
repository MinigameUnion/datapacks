scoreboard players set #RANGE num_000 10
function tool_000:random
execute if score #RANDOM num_000 matches 0..1 run tellraw @a[tag=join_area_602] [{"text":"@"},{"selector": "@s"},{"text": "(村人) "},{"text":"ﾊｰﾝ"}]
execute if score #RANDOM num_000 matches 2..3 run tellraw @a[tag=join_area_602] [{"text":"@"},{"selector": "@s"},{"text": "(村人) "},{"text":"ﾌｩﾝ"}]
execute if score #RANDOM num_000 matches 4..5 run tellraw @a[tag=join_area_602] [{"text":"@"},{"selector": "@s"},{"text": "(村人) "},{"text":"ﾌｩｰﾝ"}]
execute if score #RANDOM num_000 matches 6..7 run tellraw @a[tag=join_area_602] [{"text":"@"},{"selector": "@s"},{"text": "(村人) "},{"text":"ﾊｯ"}]
execute if score #RANDOM num_000 matches 8 run tellraw @a[tag=join_area_602] [{"text":"@"},{"selector": "@s"},{"text": "(村人) "},{"text":"ﾊｯﾊｰﾝ!"}]
execute if score #RANDOM num_000 matches 9 run tellraw @a[tag=join_area_602] [{"text":"@"},{"selector": "@s"},{"text": "(村人) "},{"text":"ﾎｧ"}]
