# add the newly summoned spell circle to the spell
tag @s add spell_circle
scoreboard players operation @s spell = global_id spell
scoreboard players operation @s spell_family = max_id spell_family
scoreboard players operation @s spell_parent = current_parent spell_parent

# TODO: add tags based on spells:variables spell.xyz

tag @s remove new_spell_circle