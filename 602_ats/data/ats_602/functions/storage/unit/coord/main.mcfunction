scoreboard players remove $Ope_A_602 e1_602 1
data modify storage ats_602:unit Source set from storage ats_602:unit List
data remove storage ats_602:unit List
function ats_602:storage/unit/coord/source/main
function ats_602:storage/unit/coord/source/revert

scoreboard players add $Ope_B_602 e1_602 1
scoreboard players operation $Ope_B_602 e2_602 = $Ope_B_602 e1_602
execute if score $Ope_A_602 e1_602 matches 1.. run function ats_602:storage/unit/coord/recursive
