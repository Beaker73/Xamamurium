# reset - player
clear @s
tp @s -6 65 7 -90 0
advancement revoke @s everything

# reset - phone
scoreboard players set @s phone 0

# reset - shattering escape
scoreboard players set @s throw 0
tag @s remove throw
setblock -4 65 8 minecraft:air
setblock -4 65 8 minecraft:barrel[facing=up,open=false]{Items:[{Slot:13,id:stone,Count:1}]}
fill -6 66 9 -6 67 9 minecraft:glass_pane

# other global setup
function xama:startup