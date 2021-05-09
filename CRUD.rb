# CRUD

# Create
  fox = Restaurant.new(name: "The fox")
  fox.save
  # fox = Restaurant.create(name: "The fox")

# Read
  # Read all
    restaurants = Restaurant.all # Returns an array of instances

  # Read one
    some_restaurant = Restaurant.find(2) # id
    another_restaurant = Restaurant.find_by(name: "Sir Hummus")
    # another_restaurant = Restaurant.find_by_name("Sir Hummus")

# Update
  fox.address = "Bristol"
  fox.save

# Destroy
  some_restaurant.destroy


# Advanced queries
  Restaurant.count
  Restaurant.where(rating: 3)
  Restaurant.where("name LIKE ?", "%goose%")
  Restaurant.order(created_at: :asc)
  Restaurant.all.limit(5)