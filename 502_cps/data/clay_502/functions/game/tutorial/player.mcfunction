#> clay_502:game/tutorial/player
# @within
#   function clay_502:game/tutorial/create

tellraw @s ["",{"text":"[Tutorial] ","color":"gold"},{"text":"クレー射撃 チュートリアル","color":"white"}]

tellraw @s {"translate":"%sを演習します","color":"gray","with":[{"text":"銃の扱い方,クレーの撃ち方","color":"white"}]}
tellraw @s {"translate":"操作方法は%sに表示されます","color":"gray","with":[{"text":"画面中央下段","color":"white"}]}
tellraw @s {"translate":"複数人で演習する場合は%s参加を待ちましょう","color":"gray","with":[{"text":"銃を拾わずに","color":"red","underlined":true}]}
tellraw @s {"translate": "銃を拾うと%sになります","color":"gray","with":[[{"text":"他のプレイヤーは","color":"white"},{"text":"途中参加不可能","color":"red","underlined":true}]]}

function clay_502:game/player/create