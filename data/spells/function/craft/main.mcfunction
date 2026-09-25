# to be called by the entity holding the custom data "ingredients"

data modify storage spells:variables ingredients set from entity @s Item.components."minecraft:custom_data".ingredients

function spells:craft/use_ingredients

# TODO: remove all items in "consumed" from the original (visually too)

# TODO: use "output" to create the new item