data modify storage utility_001:hologram_util TextGroup append value {Offset: [1.5f,-1.0f],HologramID: 5001,Setting: {CursorCollider: 0b,TextInterpret: 1b,TextSpaceWidth: 0.18f},Text: ['ﬡ']}
data modify storage utility_001:hologram_util TextGroup[-1].Text[0] set from storage clay_502:storage match.display.list[0].tag.display.Name

data modify storage utility_001:hologram_util TextGroup append value {Offset: [1.5f,-0.66f],HologramID: 5001,Setting: {CursorCollider: 0b,TextInterpret: 0b,TextSpaceWidth: 0.18f},Text: ['ﬡ']}
data modify storage utility_001:hologram_util TextGroup[-1].Text[0] set from storage clay_502:storage match.display.list[0].tag.player[0]

execute store result score #ID num_502 run data get storage clay_502:storage match.display.list[0].Slot
execute store result score #JOIN num_502 run data get storage clay_502:storage match.display.list[0].tag.join
scoreboard players set #player num_502 0
execute as @a[scores={playing_000=502},tag=playing_502] if score @s match_id_502 = #ID num_502 run scoreboard players add #player num_502 1

execute if score #JOIN num_502 > #player num_502 run data modify storage utility_001:hologram_util TextGroup append value {Offset: [1.1f,-0.33f],HologramID: 5022,Setting: {CursorCollider: 1b,TextInterpret: 0b,TextSpaceWidth: 0.24f},Text: ['参','加','す','る']}
execute if score #JOIN num_502 matches 1.. if score #JOIN num_502 <= #player num_502 run data modify storage utility_001:hologram_util TextGroup append value {Offset: [1.1f,-0.33f],HologramID: 5022,Setting: {CursorCollider: 0b,TextInterpret: 0b,TextSpaceWidth: 0.24f},Text: ['満','員']}
execute if score #JOIN num_502 matches -1 run data modify storage utility_001:hologram_util TextGroup append value {Offset: [1.1f,-0.33f],HologramID: 5022,Setting: {CursorCollider: 1b,TextInterpret: 0b,TextSpaceWidth: 0.24f},Text: ['参','加','す','る']}

execute unless score #JOIN num_502 matches 0 if data storage clay_502:storage match.display.list[0].tag{spectate:1b} run data modify storage utility_001:hologram_util TextGroup append value {Offset: [1.1f,0.01f],HologramID: 5023,Setting: {CursorCollider: 1b,TextInterpret: 0b,TextSpaceWidth: 0.24f},Text: ['観','戦','す','る']}

execute if data storage clay_502:storage match.display.list[0].tag{spectate:1b,join:0b} run data modify storage utility_001:hologram_util TextGroup append value {Offset: [1.1f,-0.33f],HologramID: 5023,Setting: {CursorCollider: 1b,TextInterpret: 0b,TextSpaceWidth: 0.24f},Text: ['観','戦','す','る']}

data modify storage utility_001:hologram_util TextGroup append value {Offset: [0.25f,0.125f],HologramID: 5000,Setting: {CursorCollider: 1b,TextInterpret: 0b,TextSpaceWidth: 0.12f},Text: ['↩']}
data modify storage utility_001:hologram_util TextGroup[-1].HologramID set from storage clay_502:storage match.display.return

execute if data storage clay_502:storage match.display.list[1] run data modify storage utility_001:hologram_util TextGroup append value {Offset: [0.25f,-0.5f],HologramID: 5020,Setting: {CursorCollider: 1b,TextInterpret: 0b,TextSpaceWidth: 0.18f},Text: ['<']}
execute if data storage clay_502:storage match.display.list[1] run data modify storage utility_001:hologram_util TextGroup append value {Offset: [2.75f,-0.5f],HologramID: 5021,Setting: {CursorCollider: 1b,TextInterpret: 0b,TextSpaceWidth: 0.18f},Text: ['>']}