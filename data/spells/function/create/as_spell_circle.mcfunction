tag @s remove new_spell_circle
tag @s add spell

# add the newly summoned spell circle to the spell
scoreboard players operation @s spell = global_id spell
scoreboard players operation @s spell_family = current_family spell_family
scoreboard players operation @s spell_parent = current_parent spell_parent

# set the size accordingly
data modify entity @s[type=item_display] transformation.scale set from storage spells:variables current.size

execute if data storage spells:variables current.ingredient run return run function spells:create/function/ingredient

# TODO: depending on the circle function, summon a specific circle display

execute store result score x spell run data get entity @s Pos[0] 1000
execute store result score z spell run data get entity @s Pos[2] 1000
execute store result score n_children spell run data get storage spells:variables current.children[]
execute store result storage spells:variables n_children int 1 run scoreboard players get n_children spell
execute store result score size spell run data get storage spells:variables current.size
data modify storage spells:variables children set from storage spells:variables current.children
scoreboard players set child spell 0
execute if data storage spells:variables temp[0] run function spells:create/function/n_circle