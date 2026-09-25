tag @s remove new_spell_circle

# add the newly summoned spell circle to the spell
scoreboard players operation @s spell = global_id spell
scoreboard players operation @s spell_family = max_id spell_family
scoreboard players operation @s spell_parent = current_parent spell_parent

# TODO: modify the item_display based on data in spells:variables current.xyz
execute if data storage spells:variables current.ingredient run return run function spells:create/function/ingredient