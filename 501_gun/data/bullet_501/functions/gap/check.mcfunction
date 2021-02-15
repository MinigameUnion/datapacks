scoreboard players set #gap num_501 0
execute if score #x num_501 = #y num_501 if score #x num_501 = #min num_501 run scoreboard players set #gap num_501 1
execute if score #y num_501 = #z num_501 if score #y num_501 = #min num_501 run scoreboard players set #gap num_501 1
execute if score #z num_501 = #x num_501 if score #z num_501 = #min num_501 run scoreboard players set #gap num_501 1
execute if score #x num_501 = #y num_501 if score #y num_501 = #z num_501 if score #x num_501 = #min num_501 run scoreboard players set #gap num_501 2

#tellraw @a [{"text":"xyz:"},{"score":{"objective":"num_501","name":"#x"}},{"text":","},{"score":{"objective":"num_501","name":"#y"}},{"text":","},{"score":{"objective":"num_501","name":"#z"}}]