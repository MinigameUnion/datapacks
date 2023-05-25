scoreboard players add $Ope_A_602 e_602 1
data modify storage ats_602:unit List append from storage ats_602:unit Post[-1]
data remove storage ats_602:unit Post[-1]
execute if data storage ats_602:unit Post[-1] run function ats_602:storage/unit/pre
