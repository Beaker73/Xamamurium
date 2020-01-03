tellraw @s "restart"

# reset - player
clear @s
tp @s -6 65 7 -90 0
advancement revoke @s everything

# reset - phone
scoreboard players set @s phone 0
tag @s remove pickup
function xama:build_phone

# reset - shattering escape
scoreboard players set @s throw 0
tag @s remove throw
setblock -4 65 8 minecraft:air
setblock -4 65 8 minecraft:barrel[facing=up,open=false]{Items:[{Slot:13,id:stone,Count:1}]}
fill -6 66 9 -6 67 9 minecraft:air
fill -6 66 9 -6 67 9 minecraft:glass_pane[east=true,west=true]

# other global setup (disabled while in dev since startup calls restart)
# function xama:startup