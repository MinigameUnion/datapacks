#> clay_502:game/default/player
# @within
#   function clay_502:game/default/create

tellraw @s ["",{"text":"[Standard] ","color":"blue"},{"text":"15個のクレー","color":"reset"},{"text":"を","color":"gray"},{"text":"3セット","color":"reset"},{"text":"に分け,","color":"gray"},{"text":"5個ずつ","color":"gray"},{"text":"クレーを撃つモード です","color":"gray"}]
tellraw @s ["",{"text":"[Standard] ","color":"blue"},{"text":"撃ちぬいたクレーの数","color":"reset"},{"text":" , ","color":"gray"},{"text":"発射からヒットするまでの時間","color":"reset"},{"text":" によって","color":"gray"}]
tellraw @s ["",{"text":"[Standard] ","color":"blue"},{"text":"獲得できるミニが決定","color":"reset"},{"text":"します","color":"gray"}]
tellraw @s ["",{"text":"[Standard] ","color":"blue"},{"text":"銃を手に取って","color":"reset"},{"text":"スタートします","color":"gray"}]

function clay_502:game/player/create