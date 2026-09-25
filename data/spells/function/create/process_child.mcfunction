# TODO: summon item display (=spell entity)

# add the newly summoned spell entity to the spell
tag @s add spell_circle
scoreboard players operation @s spell = global_id spell
scoreboard players operation @s spell_family = max_id spell_family
scoreboard players operation @s spell_parent = current_parent spell_parent

# TODO: add tags based on spells:variables spell.xyz