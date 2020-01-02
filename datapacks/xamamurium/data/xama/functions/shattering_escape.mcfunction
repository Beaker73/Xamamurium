#reset the advancement, so it can run again on next tick
advancement revoke @s only xama:shattering_escape

# test if user was throwing at the window
# www.reddit.com/r/MinecraftCommands/comments/akjyh5/help_any_way_to_execute_if_a_player_is_looking_at/
execute as @s[scores={throw=1..}] at @s anchored eyes facing -5 66 9 anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.6] run tag @s add throw

# yes then call the shatter function
execute if entity @s[tag=throw] run function xama:breaking_glass

# otherwise, if stone thrown, but not correct direction
# give the user a hint (s)he is on the right track
execute if entity @s[scores={throw=1..},tag=!throw] run tellraw @s "Your aim is a bit of"

# clear tag and throw scoreboard for next try
tag @s remove throw
scoreboard players set @p throw 0
