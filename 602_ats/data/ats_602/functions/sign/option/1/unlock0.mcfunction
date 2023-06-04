execute unless score $o_1_602 a1_602 <= @s coin_000 positioned as @s run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 1.0 1.0
execute if score $o_1_602 a1_602 <= @s coin_000 run function ats_602:sign/option/1/unlock1
scoreboard players operation @s remove_coin_000 = $o_1_602 a1_602
function ats_602:block_gen/sign/option/1
execute unless score $602 a_602 matches 1.. run function ats_602:reset/main