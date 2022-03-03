#> system_000:version
# @within
#   function system_000:load

data remove block 0 0 0 Items

data modify storage system_000:storage version.array set value [I; 0,6,0]
execute as 0-0-0-0-0 run loot replace block 0 0 0 container.0 loot system_000:version
data modify storage system_000:storage version.string set value '{"text":""}'
data modify storage system_000:storage version.string set from block 0 0 0 Items[0].tag.display.Name

data remove block 0 0 0 Items