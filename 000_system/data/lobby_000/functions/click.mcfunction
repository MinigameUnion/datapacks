#> lobby_000:click
### インタラクションをクリックしたとき

## クリック対象に合わせて状態を変更
    execute if entity @s[advancements={lobby_000:click={000=true}}] run function player_000:leave_game
    execute if entity @s[advancements={lobby_000:click={101=true}}] run function spaceinvaders_101:join
    execute if entity @s[advancements={lobby_000:click={102=true}}] run function pac_man_102:join
    execute if entity @s[advancements={lobby_000:click={201=true}}] run function reversi_201:menu/area_linker/join
    execute if entity @s[advancements={lobby_000:click={401=true}}] run function suiryu_taratara_401:join
    execute if entity @s[advancements={lobby_000:click={502=true}}] run function clay_502:join
    execute if entity @s[advancements={lobby_000:click={602=true}}] run function ats_602:join
    execute if entity @s[advancements={lobby_000:click={801=true}}] run function ms_801:join

## サウンド
    # tp後の位置で鳴るようにpositioned
    execute positioned as @s run playsound minecraft:block.beacon.activate ambient @s ~ ~ ~ 2 1 1

## プレイヤーがいた場所にそれっぽいパーティクル
    particle enchant ~ ~1 ~ 0.1 0.5 0.1 0.2 50
    particle minecraft:witch ~ ~ ~ 0 1 0 1 10

## 進捗の解除
    advancement revoke @s only lobby_000:click
