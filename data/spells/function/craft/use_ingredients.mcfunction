# the storage spells:variables ingrediens should look like this: [ "stone", "grass", "whatever" ]

# run element_ball, if there is a ball item and an element
execute if data storage spells:variables ingredients[{name: "ball"}] if data storage spells:variables ingredients[{tags:[{name:"element"}]}] run return run function spells:craft/element_ball

# run abc, if there is xyz ...