execute unless data storage spells:variables current.postorder run return run data modify storage spells:variables current.postorder set value 1b

execute as @e[tag=spell_entity] if score entity @s family > current family run tag @ add go_up
