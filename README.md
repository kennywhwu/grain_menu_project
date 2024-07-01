## Menu Project

This project is a Ruby on Rails application with a GraphQL endpoint to manage and query a restaurant menu. The application models a menu with sections, items, modifier groups, and modifiers, allowing for flexible menu configurations.

### Defining Models and Associations

Based on the provided ERD, the following models and associations were created:

- Menu: Represents a restaurant menu.
  - Has many sections through MenuSection.
- Section: Represents a section within a menu (e.g., Pizza).
  - Has many items through SectionItem.
- Item: Represents an item; can either be a Product available for sale (e.g., Margherita Pizza) or a Component as a modifier to a Product (e.g., Extra Cheese)
  - Has many modifier groups through ItemModifierGroup.
- ModifierGroup: Represents a group of modifiers (e.g., Size of Pizza).
  - Has many modifiers.
- Modifier: Represents a specific modifier choice within a modifier group (e.g., 10" Pizza).

The following join tables were also created to as references for the many-to-many relationships:

- MenuSection: Joins Menu and Section.
- SectionItem: Joins Section and Item.
- ItemModifierGroup: Joins Item and ModifierGroup.

### API URL

Access the live GraphQL API with a POST request and query to: [Menu API URL](https://kennywhwu-menu-project-dc89e2f312a2.herokuapp.com/graphql)

### Example Query

```graphql
{
  menus {
    id
    identifier
    label
    state
    startDate
    endDate
    sections {
      id
      identifier
      label
      description
      items {
        id
        category
        identifier
        label
        description
        modifierGroups {
          id
          identifier
          label
          selectionRequiredMin
          selectionRequiredMax
          modifiers {
            id
            displayOrder
            defaultQuantity
            priceOverride
            item{
              id
              category
              identifier
              label
              description
            }
          }
        }
      }
    }
  }
}
```

### Example Response

```json
{
  "data": {
    "menus": [
      {
        "id": "1",
        "identifier": "pizza_menu",
        "label": "Pizza Menu",
        "state": "active",
        "startDate": "2024-07-01",
        "endDate": "2024-07-31",
        "sections": [
          {
            "id": "1",
            "identifier": "classic_pizzas",
            "label": "Classic Pizzas",
            "description": "Classic Pizzas",
            "items": [
              {
                "id": "1",
                "category": "Product",
                "identifier": "margherita",
                "label": "Margherita Pizza",
                "description": "Pizza with tomatoes, mozzarella, fresh basil leaves, and extra virgin olive oil",
                "modifierGroups": []
              },
              {
                "id": "2",
                "category": "Product",
                "identifier": "pepperoni",
                "label": "Pepperoni Pizza",
                "description": "Pizza with tomato sauce, cheese, and pepperonis",
                "modifierGroups": []
              }
            ]
          },
          {
            "id": "2",
            "identifier": "custom_pizzas",
            "label": "Custom Pizzas",
            "description": "Customizable Pizzas",
            "items": [
              {
                "id": "3",
                "category": "Product",
                "identifier": "base",
                "label": "Base Pizza",
                "description": "Pizza with tomato sauce and cheese",
                "modifierGroups": [
                  {
                    "id": "1",
                    "identifier": "toppings",
                    "label": "Additional Toppings",
                    "selectionRequiredMin": 0,
                    "selectionRequiredMax": 3,
                    "modifiers": [
                      {
                        "id": "1",
                        "displayOrder": 0,
                        "defaultQuantity": 1,
                        "priceOverride": null,
                        "item": {
                          "id": "4",
                          "category": "Component",
                          "identifier": "extra_cheese",
                          "label": "Extra Cheese",
                          "description": "Extra serving of cheese"
                        }
                      },
                      {
                        "id": "2",
                        "displayOrder": 0,
                        "defaultQuantity": 1,
                        "priceOverride": null,
                        "item": {
                          "id": "5",
                          "category": "Component",
                          "identifier": "extra_sauce",
                          "label": "Extra Sauce",
                          "description": "Extra serving of tomato sauce"
                        }
                      }
                    ]
                  },
                  {
                    "id": "2",
                    "identifier": "pizza_size",
                    "label": "Size of Pizza",
                    "selectionRequiredMin": 1,
                    "selectionRequiredMax": 1,
                    "modifiers": [
                      {
                        "id": "3",
                        "displayOrder": 0,
                        "defaultQuantity": 1,
                        "priceOverride": null,
                        "item": {
                          "id": "6",
                          "category": "Component",
                          "identifier": "ten_inch",
                          "label": "10\" Pizza",
                          "description": "Individual sized pizza"
                        }
                      },
                      {
                        "id": "4",
                        "displayOrder": 0,
                        "defaultQuantity": 1,
                        "priceOverride": null,
                        "item": {
                          "id": "7",
                          "category": "Component",
                          "identifier": "twelve_inch",
                          "label": "12\" Pizza",
                          "description": "Regular sized pizza"
                        }
                      },
                      {
                        "id": "5",
                        "displayOrder": 0,
                        "defaultQuantity": 1,
                        "priceOverride": null,
                        "item": {
                          "id": "8",
                          "category": "Component",
                          "identifier": "fourteen_ince",
                          "label": "14\" Pizza",
                          "description": "Large sized pizza"
                        }
                      }
                    ]
                  }
                ]
              }
            ]
          }
        ]
      }
    ]
  }
}
```

## Monitoring

Several metrics would be helpful to monitor and analyze for performance optimization:

- Average and 95th percentile response time
- Error rates
  - HTTP-related
  - GraphQL query-related
- Request rates (also identify peak times)
- Database query execution time
- CPU/Memory usage

## Future Improvements

- Add complete testing for different query scenarios
- Implement more comprehensive error handling for endpoint
- Create mutation endpoint to add, update, or delete data
- Include filtering and sorting logic
- Use caching to improve performance when data starts growing
