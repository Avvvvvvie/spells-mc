# get the spell id
execute store result score current_spell spell run data get storage spells:variables spell.id

# disable all spell entities
execute as @e[tag=spell_circle] if score @s spell = global_id spell run tag @s add disabled

# TODO: variable time_of_death of disabled spell
execute store result score new_time time_of_death run time query gametime
scoreboard players add new_time time_of_death 500
execute as @e[tag=spell_circle] if score @s spell = global_id spell run scoreboard players operation @s time_of_death = new_time time_of_death

# add the first child to the stack to start with it
data modify storage spells:variables stack set value []
data modify storage spells:variables stack prepend from storage spells spell
scoreboard players set max_id spell_family 0
function spells:execute/recursion

scoreboard players add new_time time_of_death 500
execute as @e[tag=spell_circle] if score @s spell = global_id spell run scoreboard players operation @s time_of_death = new_time time_of_death

function spells:kill/main { time: 501 }
function spells:kill/main { time: 1001 }