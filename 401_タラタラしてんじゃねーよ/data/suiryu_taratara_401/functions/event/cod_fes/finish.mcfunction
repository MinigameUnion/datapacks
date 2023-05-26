#> suiryu_taratara_401:event/cod_fes/finish
#
# コッドフェス終了
#
# @within function suiryu_taratara_401:event/cod_fes/001/notification

# コッドフェス開催中フラグ設定
  data modify storage suiryu_taratara_401 CodFes.Open set value 0

# 終了フラグ設定
  data modify storage suiryu_taratara_401 CodFes.1.finish set value 1
