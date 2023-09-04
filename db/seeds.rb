# Clear existing data
RestaurantPizza.destroy_all
Restaurant.destroy_all
Pizza.destroy_all

# Create Restaurants
sottocasa = Restaurant.create(name: "Sottocasa NYC", address: "298 Atlantic Ave, Brooklyn, NY 11201")
pizzarte = Restaurant.create(name: "PizzArte", address: "69 W 55th St, New York, NY 10019")

# Create Pizzas
cheese_pizza = Pizza.create(name: "Cheese", ingredients: "Dough, Tomato Sauce, Cheese")
pepperoni_pizza = Pizza.create(name: "Pepperoni", ingredients: "Dough, Tomato Sauce, Cheese, Pepperoni")

# Create Restaurant-Pizza Associations
RestaurantPizza.create(price: 12, restaurant: sottocasa, pizza: cheese_pizza)
RestaurantPizza.create(price: 14, restaurant: sottocasa, pizza: pepperoni_pizza)
RestaurantPizza.create(price: 13, restaurant: pizzarte, pizza: cheese_pizza)
RestaurantPizza.create(price: 15, restaurant: pizzarte, pizza: pepperoni_pizza)
