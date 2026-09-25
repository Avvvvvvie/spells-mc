summon item_display ~ ~ ~ { Tags: [ new_spell_circle ] }

execute as @e[type=item_display, tag=new_spell_circle] run function spells:create/as_spell_circle