# if in front of door
execute if entity @s[x=-3,y=65,z=8,dx=1,dy=1,dz=1,tag=!door] run say "The door is locked, and I lost the keys"
execute if entity @s[x=-3,y=65,z=8,dx=1,dy=1,dz=1] run tag @s add door
execute unless entity @s[x=-3,y=65,z=8,dx=1,dy=1,dz=1] run tag @s remove door
