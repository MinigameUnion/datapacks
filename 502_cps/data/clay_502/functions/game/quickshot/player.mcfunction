#> clay_502:game/quickshot/player
# @within
#   function clay_502:game/quickshot/create

tellraw @s ["",{"text":"[QuickShot] ","color":"yellow"},{"text":"クレー射撃 クイックショット","color":"white"}]
tellraw @s {"translate":"計%sを%sで奪い合うモードです","color":"gray","with":[{"text":"18個のクレー","color":"white"},{"text":"2人のプレイヤー","color":"white"}]}
tellraw @s {"translate":"%sが多い方が勝者となります","color":"gray","with":[{"text":"撃ちぬいたクレーの数","color":"white"}]}
tellraw @s {"translate":"勝者にはボーナスとして%sが与えられます","color":"gray","with":[{"translate":"%sミニ","color":"white","with":[{"score":{"name":"#WIN_BONUS","objective":"num_502"}}]}]}
tellraw @s {"translate":"%sが%sスタートします","color":"gray","with":[{"text":"参加者の両方","color":"white"},{"text":"銃を手に取って","color":"white"}]}

function clay_502:game/player/create