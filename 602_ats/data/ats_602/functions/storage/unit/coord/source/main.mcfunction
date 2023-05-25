data modify storage ats_602:unit Post append from storage ats_602:unit Source[-1]
data remove storage ats_602:unit Source[-1]
execute store result score $Ope_A_602 a_602 run data get storage ats_602:unit This[-1].ID
execute store result score $Ope_B_602 a_602 run data get storage ats_602:unit Post[-1].ID
scoreboard players reset $Ope_A_602 b_602
execute unless score $Ope_A_602 a_602 = $Ope_B_602 a_602 run function ats_602:storage/unit/coord/source/0

execute if data storage ats_602:unit Source[-1] run function ats_602:storage/unit/coord/source/main