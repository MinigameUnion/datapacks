scoreboard players reset #test num_501
execute store result score #test num_501 if score #1 num_000 = #1 num_000
execute unless score #test num_501 matches 0.. run say none
execute if score #test num_501 matches 2.. run say 2..
execute if score #test num_501 matches 0 run say false
execute if score #test num_501 matches 1 run say true

scoreboard players reset #test num_501
execute store result score #test num_501 if score #1 num_000 = #1 num_000 if score #1 num_000 = #1 num_000
execute unless score #test num_501 matches 0.. run say none
execute if score #test num_501 matches 2.. run say 2..
execute if score #test num_501 matches 0 run say false
execute if score #test num_501 matches 1 run say true

scoreboard players reset #test num_501
execute store result score #test num_501 if score #1 num_000 = #1 num_000 if score #1 num_000 = #0 num_000
execute unless score #test num_501 matches 0.. run say none
execute if score #test num_501 matches 2.. run say 2..
execute if score #test num_501 matches 0 run say false
execute if score #test num_501 matches 1 run say true

scoreboard players reset #test num_501
execute store result score #test num_501 if score #1 num_000 = #0 num_000
execute unless score #test num_501 matches 0.. run say none
execute if score #test num_501 matches 2.. run say 2..
execute if score #test num_501 matches 0 run say false
execute if score #test num_501 matches 1 run say true

scoreboard players reset #test num_501
execute store result score #test num_501 if score #1 num_000 = #0 num_000 if score #1 num_000 = #2 num_000
execute unless score #test num_501 matches 0.. run say none
execute if score #test num_501 matches 2.. run say 2..
execute if score #test num_501 matches 0 run say false
execute if score #test num_501 matches 1 run say true

scoreboard players reset #test num_501
execute store result score #test num_501 if score #1 num_000 = #0 num_000 if score #1 num_000 = #1 num_000
execute unless score #test num_501 matches 0.. run say none
execute if score #test num_501 matches 2.. run say 2..
execute if score #test num_501 matches 0 run say false
execute if score #test num_501 matches 1 run say true

scoreboard players reset #test num_501
execute store result score #test num_501 if score #1 num_000 = #1 num_000 run say w
execute unless score #test num_501 matches 0.. run say none
execute if score #test num_501 matches 2.. run say 2..
execute if score #test num_501 matches 0 run say false
execute if score #test num_501 matches 1 run say true
