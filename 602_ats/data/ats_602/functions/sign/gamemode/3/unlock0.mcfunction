execute unless score $g_chaos_602 a1_602 <= @s coin_000 positioned as @s run playsound minecraft:block.note_block.bass player @s ~ ~ ~ 1.0 1.0
execute if score $g_chaos_602 a1_602 <= @s coin_000 run function ats_602:sign/gamemode/3/unlock1
scoreboard players set @s remove_coin_000 500
execute unless score $602 a_602 matches 1.. run function ats_602:block_gen/sign/0
execute unless score $602 a_602 matches 1.. run function ats_602:reset/main