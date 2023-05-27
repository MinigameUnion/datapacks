#> pac_man_102:stage_reset
### ステージのリセット

## ステージセット
    # ステージ
    place template pac_man_102:stage 981 85 984
    # ロゴ
    place template pac_man_102:title_0 1018 132 961
    place template pac_man_102:title_1 1018 132 1009

## 退場用看板
    setblock 982 119 1000 minecraft:oak_wall_sign[facing=east]{Text2:'{"text":"ロビーへ戻る","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function pac_man_102:leave"}}'}

## その他リセット
    function pac_man_102:reset
