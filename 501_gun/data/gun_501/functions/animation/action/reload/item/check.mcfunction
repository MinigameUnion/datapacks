function inv_000:get

execute store result score #Inventory num_501 if data storage inv_000:api Inventory[]
execute if data storage gun_501:temp tag.gun.mag.mag{Count:0b} store result score #compare num_501 run data modify storage inv_000:api Inventory[] merge from storage gun_501:temp tag.gun.mag.mag.tag.mag.status.ammo
execute unless data storage gun_501:temp tag.gun.mag.mag{Count:0b} store result score #compare num_501 run data modify storage inv_000:api Inventory[] merge from storage gun_501:temp tag.gun.mag.status.mag
execute if score #Inventory num_501 = #compare num_501 run scoreboard players set #RELOAD num_501 -1

#tellraw @a [{"text":"#compare num_501 : "},{"score":{"name":"#compare","objective":"num_501"}}]