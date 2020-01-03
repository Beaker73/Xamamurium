# if watching mirror
execute if entity @p[y_rotation=-61..-121] run fill -5 66 -2 -5 65 -2 white_concrete
# if not watching mirror
execute if entity @p[y_rotation=-120..-60] run fill -5 66 -2 -5 65 -2 air

# correct door in mirror
execute if block -2 65 2 dark_oak_door[open=false] run setblock 6 65 2 dark_oak_door[open=false,facing=south,hinge=right]
execute if block -2 65 2 dark_oak_door[open=true] run setblock 6 65 2 dark_oak_door[open=true,facing=south,hinge=right]
