data modify storage spells:variables output set value { size: 5, function: 'element_ball', children: [] }

data modify storage spells:variables output.children[0].ingredient set from storage spells:variables ingredients[{tags:[{name:"element"}]}][0].name

data modify storage spells:variables consumed append from storage spells:variables ingredients[{tags:[{name:"element"}]}][0]