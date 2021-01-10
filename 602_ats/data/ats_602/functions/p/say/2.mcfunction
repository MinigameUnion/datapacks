scoreboard players set #RANGE num_000 12
function tool_000:random
execute if score #RANDOM num_000 matches 0..1 run tellraw @a[team=602] [{"text":"@"},{"selector": "@s"},{"text": "(イヌ) "},{"text":"わん"}]
execute if score #RANDOM num_000 matches 2..3 run tellraw @a[team=602] [{"text":"@"},{"selector": "@s"},{"text": "(イヌ) "},{"text":"ワンワン！"}]
execute if score #RANDOM num_000 matches 4..5 run tellraw @a[team=602] [{"text":"@"},{"selector": "@s"},{"text": "(イヌ) "},{"text":"ワオーン"}]
execute if score #RANDOM num_000 matches 6..7 run tellraw @a[team=602] [{"text":"@"},{"selector": "@s"},{"text": "(イヌ) "},{"text":"がうー"}]
execute if score #RANDOM num_000 matches 8..9 run tellraw @a[team=602] [{"text":"@"},{"selector": "@s"},{"text": "(イヌ) "},{"text":"ハッハッ"}]
execute if score #RANDOM num_000 matches 10 run tellraw @a[team=602] [{"text":"@"},{"selector": "@s"},{"text": "(イヌ) "},{"text":"クゥーン"}]
execute if score #RANDOM num_000 matches 11 run tellraw @a[team=602] [{"text":"@"},{"selector": "@s"},{"text": "(イヌ) "},{"text":"ガルルル…"}]
