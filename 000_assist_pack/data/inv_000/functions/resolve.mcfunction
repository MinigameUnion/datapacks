#> inv_000:resolve
#
# [inv_000:api Name]内のテキストコンポーネントをresolveする
#
# @api

loot replace block 0 0 0 container.0 loot inv_000:resolve
data modify storage inv_000:api Name set from block 0 0 0 Items[0].tag.display.Name
data remove block 0 0 0 Items