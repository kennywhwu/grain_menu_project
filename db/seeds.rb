# Clear existing data
Menu.destroy_all
Section.destroy_all
Item.destroy_all
ModifierGroup.destroy_all
Modifier.destroy_all
MenuSection.destroy_all
SectionItem.destroy_all
ItemModifierGroup.destroy_all

# Create Menus
menu1 = Menu.create(identifier: "pizza_menu", label: "Pizza Menu", state: "active", start_date: Date.today, end_date: Date.today + 30)

# Create Sections
section1 = Section.create(identifier: "classic_pizzas", label: "Classic Pizzas", description: "Classic Pizzas")
section2 = Section.create(identifier: "custom_pizzas", label: "Custom Pizzas", description: "Customizable Pizzas")

# Associate Menus and Sections
MenuSection.create(menu: menu1, section: section1)
MenuSection.create(menu: menu1, section: section2)

# Create Items
item1 = Item.create(identifier: "margherita", label: "Margherita Pizza", category: "Product", description: "Pizza with tomatoes, mozzarella, fresh basil leaves, and extra virgin olive oil")
item2 = Item.create(identifier: "pepperoni", label: "Pepperoni Pizza", category: "Product", description: "Pizza with tomato sauce, cheese, and pepperonis")
item3 = Item.create(identifier: "base", label: "Base Pizza", category: "Product", description: "Pizza with tomato sauce and cheese")
item4 = Item.create(identifier: "extra_cheese", label: "Extra Cheese", category: "Component", description: "Extra serving of cheese")
item5 = Item.create(identifier: "extra_sauce", label: "Extra Sauce", category: "Component", description: "Extra serving of tomato sauce")
item6 = Item.create(identifier: "ten_inch", label: "10\" Pizza", category: "Component", description: "Individual sized pizza")
item7 = Item.create(identifier: "twelve_inch", label: "12\" Pizza", category: "Component", description: "Regular sized pizza")
item8 = Item.create(identifier: "fourteen_ince", label: "14\" Pizza", category: "Component", description: "Large sized pizza")

# Associate Sections and Items
SectionItem.create(section: section1, item: item1)
SectionItem.create(section: section1, item: item2)
SectionItem.create(section: section2, item: item3)

# Create Modifier Groups
modifier_group1 = ModifierGroup.create(identifier: "toppings", label: "Additional Toppings", selection_required_min: 0, selection_required_max: 3)
modifier_group2 = ModifierGroup.create(identifier: "pizza_size", label: "Size of Pizza", selection_required_min: 1, selection_required_max: 1)

# Associate Items and Modifier Groups
ItemModifierGroup.create(item: item3, modifier_group: modifier_group1)
ItemModifierGroup.create(item: item3, modifier_group: modifier_group2)

# Create Modifiers
modifier1 = Modifier.create(item: item4, modifier_group: modifier_group1, default_quantity: 1)
modifier2 = Modifier.create(item: item5, modifier_group: modifier_group1, default_quantity: 1)
modifier3 = Modifier.create(item: item6, modifier_group: modifier_group2, default_quantity: 1)
modifier4 = Modifier.create(item: item7, modifier_group: modifier_group2, default_quantity: 1)
modifier4 = Modifier.create(item: item8, modifier_group: modifier_group2, default_quantity: 1)

puts "Seed data created successfully!"
