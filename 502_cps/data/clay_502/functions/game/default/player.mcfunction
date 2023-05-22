#> clay_502:game/default/player
# @within
#   function clay_502:game/default/create

tellraw @s ["",{"text":"[Standard] ","color":"blue"},{"text":"クレー射撃 スタンダード","color":"white"}]

tellraw @s {"translate":"計%sを%sで撃つモードです","color":"gray","with":[{"text":"15個のクレー","color":"white"},{"text":"5個ずつ3セット","color":"white"}]}
tellraw @s {"translate":"%sと%sで","color":"gray","with":[{"text":"撃ちぬいたクレーの数","color":"white"},{"text":"クレー射出からヒットまでの時間","color":"white"}]}
tellraw @s {"translate":"獲得できるミニが決定します","color":"gray","with":[]}
tellraw @s {"translate":"%sスタートします","color":"gray","with":[{"text":"銃を手に取って","color":"white"}]}

function clay_502:game/player/create