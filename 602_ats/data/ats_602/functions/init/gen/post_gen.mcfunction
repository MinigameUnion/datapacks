data modify storage ats_602:main generated set value 1b
function ats_602:_init
execute as @a[tag=initowner_602] run function ats_602:join
tag @a[tag=initowner_602] remove initowner_602