#> ms_801:second
# 毎秒実行
# @internal

# 常時
## 刈れなくなった羊を復活
execute as @e[type=sheep,tag=801,nbt={Sheared:1b}] run data modify entity @s Sheared set value 0b

# ゲーム中
## すごいハサミ持った時
function ms_801:game/super_text