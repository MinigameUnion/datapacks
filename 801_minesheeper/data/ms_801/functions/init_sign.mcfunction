#> ms_801:init_sign
# 看板での初期化
# @internal

# 終了
execute if score $InitTimer General_801 matches 1.. run tellraw @s {"text":"[MineSheeper] 初期化しました。"}
execute if score $InitTimer General_801 matches 1.. run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2
execute if score $InitTimer General_801 matches 1.. run function ms_801:init
execute if score $InitTimer General_801 matches 1.. run scoreboard players set $InitTimer General_801 2147483647

# タイマー開始
execute unless score $InitTimer General_801 matches 1.. run tellraw @s {"text":"[MineSheeper] 初期化しますか？これまでのゲームの記録は保存されますが、ゲームが進行中の場合は強制終了します。初期化してよい場合は10秒以内に再度看板をクリックしてください。"}
execute unless score $InitTimer General_801 matches 1.. run scoreboard players set $InitTimer General_801 200

execute if score $InitTimer General_801 matches 2147483647 run scoreboard players set $InitTimer General_801 0
