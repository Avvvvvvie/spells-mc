# get the spell id
execute store result score current_spell spell run data get storage spells:variables spell.id

# disable all spell entities
execute as @e[tag=spell] if score @s spell = global_id spell run tag @s add disabled

# add the first child to the stack to start with it
data modify storage spells:variables stack set value []
data modify storage spells:variables stack prepend from storage spells spell
scoreboard players set max_id spell_family 0
function spells:execute/recursion

# todo: ttl of disabled spell