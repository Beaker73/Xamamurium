# telephone
execute if entity @s[advancements={xama:root=false}] run function xama:ringing_phone
# block door
execute if entity @s[advancements={xama:shattering_escape=false}] run function xama:door_blocked
# bathroom mirror
execute if entity @p[x=-4,y=65,z=-5,dx=5,dy=2,dz=6] run function xama:bathroom_mirror
# stone
execute if entity @s[advancements={xama:shattering_escape=false}] run function xama:shattering_escape
# car engine
execute if entity @s[advancements={xama:shattering_escape=true}] run function xama:car
