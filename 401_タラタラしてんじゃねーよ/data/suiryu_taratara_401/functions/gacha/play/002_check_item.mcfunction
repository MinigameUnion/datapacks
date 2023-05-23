#> suiryu_taratara_401:gacha/play/002_check_item
#
# ガチャ
# アイテム確認
#
# @within
#   function suiryu_taratara_401:gacha/play/001_summon_cod
#   function suiryu_taratara_401:gacha/play/002_check_item

# 再帰
  schedule function suiryu_taratara_401:gacha/play/002_check_item 1t

# アイテム確認
  execute as @e[type=item,x=3999.0,y=51.0,z=11.0,dx=0,dy=0,dz=0] if data entity @s Item.tag.taratara_gacha_401 run function suiryu_taratara_401:gacha/play/003_get_item
