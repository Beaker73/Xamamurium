#reset the advancement, so it can run again on next tick
advancement revoke @s only xama:root

# inc tick count
scoreboard players add @s phone 1

# play 5 dings to sound somewhat ringely
execute if entity @s[scores={phone=80..}] run playsound minecraft:block.note_block.chime ambient @s 1.18 65.60 8.00
# then reset counter so we get a trigger in 4 seconds
execute if entity @s[scores={phone=110..}] run scoreboard players set @s phone 0
