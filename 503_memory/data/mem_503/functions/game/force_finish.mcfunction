#> mem_503:game/force_finish
# @within
#   function mem_503:game/finish

function mem_503:game/reset
execute as @a[scores={id_503=1..}] if score # id_503 = @s id_503 run function mem_503:game/leave