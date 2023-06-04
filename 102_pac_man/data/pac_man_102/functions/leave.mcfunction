#> pac_man_102:leave
### ゲームを退出

## リンゴを持っているならりせっと
    execute if data entity @s Inventory[].tag.PreStart run function pac_man_102:reset

## 共通処理
    function player_000:leave_game