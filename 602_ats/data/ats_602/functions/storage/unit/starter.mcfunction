scoreboard players operation $Ope_A_602 e1_602 = $Ope_A_602 e_602
scoreboard players reset $Ope_B_602 e1_602
data modify storage ats_602:unit This set from storage ats_602:unit List

execute if score $Ope_A_602 e1_602 matches 1.. run function ats_602:storage/unit/coord/main