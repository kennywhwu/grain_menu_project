# Clear existing data
Item.destroy_all
Section.destroy_all
Menu.destroy_all
MenuSection.destroy_all
SectionItem.destroy_all
Modifier.destroy_all
ModifierGroup.destroy_all
ItemModifierGroup.destroy_all

# Create items
item1 = Item.create(product_type: 'Product', identifier: 'margherita', label: 'Margherita Pizza', description: 'Classic Margherita Pizza', price: 8.99)
item2 = Item.create(product_type: 'Product', identifier: 'pepperoni', label: 'Pepperoni Pizza', description: 'Pepperoni Pizza', price: 9.99)
item3 = Item.create(product_type: 'Product', identifier: 'veggie', label: 'Veggie Pizza', description: 'Vegetable Pizza', price: 10.99)

# Create sections
section1 = Section.create(identifier: 'classic_pizzas', label: 'Classic Pizzas', description: 'Classic Pizzas')
section2 = Section.create(identifier: 'custom_pizzas', label: 'Custom Pizzas', description: 'Customizable Pizzas')

# Create menu
menu = Menu.create(identifier: 'pizza_menu', label: 'Pizza Menu', state: 'active', start_date: Date.today, end_date: Date.today + 30)

# Create menu sections
MenuSection.create(menu: menu, section: section1, display_order: 1)
MenuSection.create(menu: menu, section: section2, display_order: 2)

# Create section items
SectionItem.create(section: section1, item: item1, display_order: 1)
SectionItem.create(section: section1, item: item2, display_order: 2)
SectionItem.create(section: section2, item: item3, display_order: 1)

# Create modifier groups
modifier_group_size = ModifierGroup.create(identifier: 'size', label: 'Size', selection_required_min: 1, selection_required_max: 1)
modifier_group_extra_cheese = ModifierGroup.create(identifier: 'extra_cheese', label: 'Extra Cheese', selection_required_min: 0, selection_required_max: 1)

# Create item modifier groups
ItemModifierGroup.create(item: item3, modifier_group: modifier_group_size)
ItemModifierGroup.create(item: item3, modifier_group: modifier_group_extra_cheese)

# Create modifiers
Modifier.create(item: item3, modifier_group: modifier_group_size, display_order: 1, default_quantity: 0, price_override: 0.00)
Modifier.create(item: item3, modifier_group: modifier_group_size, display_order: 2, default_quantity: 0, price_override: 1.00)
Modifier.create(item: item3, modifier_group: modifier_group_extra_cheese, display_order: 1, default_quantity: 0, price_override: 1.50)

puts "Seeding completed!"