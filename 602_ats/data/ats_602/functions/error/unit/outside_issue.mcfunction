data remove storage ats_602:unit Post[-1]
scoreboard players remove $602 e1_602 1
data modify storage ats_602:error Trigger set value true
data modify storage ats_602:error Type.OutsideUnit set value true
kill @s