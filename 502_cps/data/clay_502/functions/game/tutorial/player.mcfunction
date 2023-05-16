#> clay_502:game/tutorial/player
# @within
#   function clay_502:game/tutorial/create

tellraw @s ["",{"text":"[Tutorial] ","color":"gold"},{"text":"クレー射撃 チュートリアル","color":"reset"},{"text":" です","color":"gray"}]
tellraw @s ["",{"text":"[Tutorial] ","color":"gold"},{"text":"銃の扱い方,クレーの撃ち方","color":"reset"},{"text":"などを演習します","color":"gray"}]
tellraw @s ["",{"text":"[Tutorial] ","color":"gold"},{"text":"使用するキーは","color":"gray"},{"text":"体力,満腹度の上あたり","color":"reset"},{"text":"に表示されます","color":"gray"}]
tellraw @s ["",{"text":"[Tutorial] ","color":"gold"},{"text":"銃を拾うと","color":"gray"},{"text":" 他のプレイヤーは","color":"reset"},{"text":"参加出来なくなってしまう","color":"red","underlined": true},{"text":"ので","color":"gray"}]
tellraw @s ["",{"text":"[Tutorial] ","color":"gold"},{"text":"マルチで演習する際は ","color":"gray"},{"text":"拾わずに","color":"red","underlined": true},{"text":"参加を待ちましょう","color":"gray"}]

function clay_502:game/player/create