# I18n.reload!

10.times do
  Product.create({ title: Faker::Food.meat, weight: rand(5) })
end

10.times do
  component = Component.create({ title: Faker::Food.ingredient, weight: rand(5) })
  component.product_ids = Product.pluck(:id).shuffle.first(rand(10) + 1)
end

50.times do
  dish = Dish.create({ title: Faker::Food.dish })
  dish.component_ids = Component.pluck(:id).shuffle.first(rand(5) + 1)
end

user = User.create(email: 'admin@example.com', password: 'password')

10.times do
  user.votes.create(dish: Dish.all.sample, status: rand(2))
end
