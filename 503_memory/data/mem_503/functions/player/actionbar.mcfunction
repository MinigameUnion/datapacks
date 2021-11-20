#> mem_503:player/actionbar
# @within
#   function mem_503:player/get_cards
#   advancement mem_503:player/actionbar

title @s actionbar [{"translate":"獲得枚数 : %s枚","with":[{"score":{"name": "@s","objective":"num_503"}}]}]

advancement revoke @s only mem_503:player/actionbar