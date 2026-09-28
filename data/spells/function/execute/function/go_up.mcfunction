# if we are in preorder, do nothing and select postorder
execute unless data storage spells:variables current.postorder run return run function spells:execute/add_postorder

# in postorder, tag all entities that were summoned by children (and thus have a larger id)
execute as @e[tag=spell_entity] if score @s spell = current_spell spell if score @s spell_family > current_family spell_family run tag @s add go_up