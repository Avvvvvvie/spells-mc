# get the current family id
execute store result score current_family spell_family run data get storage spells:variables current.spell_family

# process the current child
execute as @e[tag=spell_circle] if score @s spell = current_spell spell if score @s spell_parent = current_family spell_family at @s run function spells:execute/process_child

# remove it from the stack
data remove storage spells:variables stack[0]