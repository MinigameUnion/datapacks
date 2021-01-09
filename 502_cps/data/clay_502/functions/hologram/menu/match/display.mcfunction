data modify storage utility_001:hologram_util TextGroup append value {Offset: [1.5f,-1.0f],HologramID: 5001,Setting: {CursorCollider: 0b,TextInterpret: 1b,TextSpaceWidth: 0.18f},Text: ['ﬡ']}
data modify storage utility_001:hologram_util TextGroup[-1].Text[0] set from storage clay_502:storage match.display.list[0].tag.display.Name
function utility_001:hologram_util/api/create

data modify storage utility_001:hologram_util TextGroup append value {Offset: [1.5f,-0.66f],HologramID: 5001,Setting: {CursorCollider: 0b,TextInterpret: 0b,TextSpaceWidth: 0.18f},Text: ['ﬡ']}
data modify storage utility_001:hologram_util TextGroup[-1].Text[0] set from storage clay_502:storage match.display.list[0].tag.player[0]
function utility_001:hologram_util/api/create

execute store result score #JOIN num_502 run data get storage clay_502:storage match.display.list[0].tag.join
execute if score #JOIN num_502 matches 1 run data modify storage utility_001:hologram_util TextGroup append value {Offset: [1.1f,-0.33f],HologramID: 5022,Setting: {CursorCollider: 1b,TextInterpret: 0b,TextSpaceWidth: 0.24f},Text: ['参','加','す','る']}
execute if score #JOIN num_502 matches 1 run function utility_001:hologram_util/api/create

execute store result score #SPECTATE num_502 run data get storage clay_502:storage match.display.list[0].tag.spectate
execute if score #SPECTATE num_502 matches 1 run data modify storage utility_001:hologram_util TextGroup append value {Offset: [1.1f,-0.33f],HologramID: 5023,Setting: {CursorCollider: 1b,TextInterpret: 0b,TextSpaceWidth: 0.24f},Text: ['観','戦','す','る']}
execute if score #SPECTATE num_502 matches 1 run function utility_001:hologram_util/api/create


data modify storage utility_001:hologram_util TextGroup append value {Offset: [0.25f,0.125f],HologramID: 5000,Setting: {CursorCollider: 1b,TextInterpret: 0b,TextSpaceWidth: 0.12f},Text: ['↩']}
data modify storage utility_001:hologram_util TextGroup[-1].HologramID set from storage clay_502:storage match.display.return
function utility_001:hologram_util/api/create

execute if data storage clay_502:storage match.display.list[1] run data modify storage utility_001:hologram_util TextGroup append value {Offset: [0.25f,-0.5f],HologramID: 5020,Setting: {CursorCollider: 1b,TextInterpret: 0b,TextSpaceWidth: 0.18f},Text: ['<']}
execute if data storage clay_502:storage match.display.list[1] run data modify storage utility_001:hologram_util TextGroup append value {Offset: [2.75f,-0.5f],HologramID: 5021,Setting: {CursorCollider: 1b,TextInterpret: 0b,TextSpaceWidth: 0.18f},Text: ['>']}