# Pizza Restaurants API

## Introduction

This is a Ruby on Rails API for tracking pizza restaurants. It allows you to manage restaurants, pizzas, and their associations.


## Getting Started

Follow these steps to set up and run the project locally:

1. Clone the repository:

   ```bash
   git clone https://github.com/yourusername/pizza-restaurants-api.git
   cd pizza-restaurants-api
2. Install dependencies:

   ```bash
   bundle install
3. Set up the database and run migrations:

   ```bash
   rails db:create
   rails db:migrate
4. Seed the database with sample data (Optional)

   ```bash
   rails db:seed
5. Start the Rails server:
   ```bash
   rails server
The API should now be running at http://localhost:3000.

---

## API Endpoints
### Restaurants
- GET /restaurants: Get a list of all restaurants.
- GET /restaurants/:id: Get details of a specific restaurant by ID.
- DELETE /restaurants/:id: Delete a restaurant by ID.

### Pizzas
- GET /pizzas: Get a list of all pizzas.

### Restaurant Pizzas
- POST /restaurant_pizzas: Create a new RestaurantPizza association.

## Example Requests
Here are some example requests you can make to the API using tools like Postman or cURL:

- Get a list of all restaurants:

   ```bash
   GET http://localhost:3000/restaurants
- Get details of a restaurant by ID:
   ````bash
   GET http://localhost:3000/restaurants/1
- Create a new RestaurantPizza association:

   ```bash
   POST http://localhost:3000/restaurant_pizzas
   Content-Type: application/json

   {
     "restaurant_pizza": {
       "price": 10,
       "pizza_id": 1,
       "restaurant_id": 2
     }
   }
## Error Handling
The API returns appropriate status codes and error messages in case of invalid requests or errors.

