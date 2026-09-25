tag @s remove new_spell_circle

# add the newly summoned spell circle to the spell
scoreboard players operation @s spell = global_id spell
scoreboard players operation @s spell_family = max_id spell_family
scoreboard players operation @s spell_parent = current_parent spell_parent

# set the size accordingly
data modify entity @s[type=item_display] transformation.scale set from storage spells:variables current.size

execute if data storage spells:variables current.ingredient run return run function spells:create/function/ingredient
# TODO: depending on the circle function, summon a specific circle display