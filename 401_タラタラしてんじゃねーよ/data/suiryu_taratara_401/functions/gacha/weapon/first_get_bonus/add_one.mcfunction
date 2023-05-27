#> suiryu_taratara_401:gacha/weapon/first_get_bonus/add_one
#
# 初獲得ボーナス+1
#
# @within function suiryu_taratara_401:gacha/weapon/rare/*

# 現在の初獲得ボーナスを取得する
  execute store result score #- suiryu_taratara_401.trigger run data get storage suiryu_taratara_401 PlayerData.Weapons.FirstGetBonus

# 初獲得ボーナス+1
  execute store result storage suiryu_taratara_401 PlayerData.Weapons.FirstGetBonus int 1 run scoreboard players add #- suiryu_taratara_401.trigger 1
