#> lobby_000:rooms/801.click
### インタラクションをクリックしたとき

## 入室処理
    function ms_801:join

## サウンド
    # tp後の位置で鳴るようにpositioned
    execute positioned as @s run playsound minecraft:entity.sheep.shear ambient @s ~ ~ ~ 2 1

## 進捗の解除
    advancement revoke @s only lobby_000:801.click
