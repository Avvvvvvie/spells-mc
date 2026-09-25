execute store result score current_time time_of_death run time query gametime

execute as @e[tag=spell] if score @s time_of_death < current_time time_of_death run kill @s