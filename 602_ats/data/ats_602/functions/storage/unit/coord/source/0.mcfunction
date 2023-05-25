execute if data storage ats_602:unit This[-1].Hit.Distance store result score $Ope_C_602 a1_602 run data get storage ats_602:unit This[-1].Hit.Distance 1000

execute store result score $Ope_A_602 a_602 run data get storage ats_602:unit This[-1].Pos[0] 1000
execute store result score $Ope_B_602 a_602 run data get storage ats_602:unit Post[-1].Pos[0] 1000
scoreboard players remove $Ope_A_602 a_602 6000000
scoreboard players remove $Ope_B_602 a_602 6000000
scoreboard players operation $Ope_A_602 a_602 -= $Ope_B_602 a_602
execute unless score $Ope_A_602 a_602 matches 0.. run scoreboard players operation $Ope_A_602 a_602 *= $-1_602 a_602

scoreboard players operation $Ope_C_602 a_602 = $Ope_A_602 a_602

execute store result score $Ope_A_602 a_602 run data get storage ats_602:unit This[-1].Pos[2] 1000
execute store result score $Ope_B_602 a_602 run data get storage ats_602:unit Post[-1].Pos[2] 1000
scoreboard players operation $Ope_A_602 a_602 -= $Ope_B_602 a_602
execute unless score $Ope_A_602 a_602 matches 0.. run scoreboard players operation $Ope_A_602 a_602 *= $-1_602 a_602

scoreboard players operation $Ope_C_602 a_602 *= $Ope_C_602 a_602
scoreboard players operation $Ope_A_602 a_602 *= $Ope_A_602 a_602

scoreboard players operation $Ope_C_602 a_602 += $Ope_A_602 a_602

scoreboard players operation $Ope_C_602 a_602 > $Ope_C_602 a1_602

execute if score $Ope_A_602 b_602 matches 1.. unless score $Ope_C_602 a_602 matches 1000.. run scoreboard players set $Ope_A_602 b_602 2
execute unless score $Ope_A_602 b_602 matches 1.. unless score $Ope_C_602 a_602 matches 1000.. run scoreboard players set $Ope_A_602 b_602 1
execute unless score $Ope_A_602 b_602 matches 1.. if score $Ope_C_602 a_602 matches 1000.. run scoreboard players set $Ope_A_602 b_602 0

execute store result storage ats_602:unit This[-1].Hit.Distance double 0.001 run scoreboard players get $Ope_C_602 a_602
execute store result storage ats_602:unit This[-1].Hit.Type byte 1 run scoreboard players get $Ope_A_602 b_602