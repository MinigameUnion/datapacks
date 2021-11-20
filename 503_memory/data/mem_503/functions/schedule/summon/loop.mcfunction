#> mem_503:schedule/summon/loop
# @within
#   function mem_503:game/summon

data modify storage mem_503:schedule summon append from storage mem_503:schedule summon[0]
schedule function mem_503:schedule/summon 10t append