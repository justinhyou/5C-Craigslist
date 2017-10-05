# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

User.destroy_all
Category.destroy_all
Post.destroy_all

joyce = User.create!({
  username: "Joyce",
  email: "Jawt94@gmail.com",
  password: "joyce123"
})

Category.create!({
  category: "Housing"
})

Category.create!({
  category: "For Sale"
})

Category.create!({
  category: "Furniture"
})

Category.create!({
  category: "Jobs"
})

Category.create!({
  category: "Services"
})
