menu = Menu.create(name: "Main Menu")

section1 = menu.sections.create(name: "Classic Pizzas")
section2 = menu.sections.create(name: "Customizable Pizzas")

item1 = section1.items.create(name: "Margherita Pizza", item_type: "Product")
item2 = section1.items.create(name: "Pepperoni Pizza", item_type: "Product")

item3 = section2.items.create(name: "Custom Pizza", item_type: "Product")

modifier_group1 = item3.modifier_groups.create(name: "Size", min_required: 1, max_required: 1)
modifier_group2 = item3.modifier_groups.create(name: "Toppings", min_required: 0, max_required: 5)

modifier1 = modifier_group1.modifiers.create(name: "10\" Pizza", default_quantity: 1, item: item3)
modifier2 = modifier_group1.modifiers.create(name: "12\" Pizza", default_quantity: 0, item: item3)
modifier3 = modifier_group2.modifiers.create(name: "Extra Cheese", default_quantity: 0, item: item3)
modifier4 = modifier_group2.modifiers.create(name: "Olives", default_quantity: 0, item: item3)
modifier5 = modifier_group2.modifiers.create(name: "Peppers", default_quantity: 0, item: item3)