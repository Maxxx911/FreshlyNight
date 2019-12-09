LIST_OF_DISHES = %w[Clanger Cobbler Pasty Panackelty Parmo Scouse Fool Parkin Scones Syllabub Trifle Cheddar] 


10.times do
  Product.create({ title: FFaker::Food.fruit, weight: rand(5) })
end

10.times do
  Product.create({ title: FFaker::Food.meat, weight: rand(5) })
end

10.times do
  Product.create({ title: FFaker::Food.vegetable, weight: rand(5) })
end


10.times do
  component = Component.create({ title: FFaker::Food.ingredient, weight: rand(5) })
  component.product_ids = Product.pluck(:id).shuffle.first(rand(10) + 1)
end

20.times do
  dish = Dish.create({ title: LIST_OF_DISHES[rand(12)] })
  dish.component_ids = Component.pluck(:id).shuffle.first(rand(5) + 1)
end

user = User.create(email: 'admin@example.com', password: 'password')

10.times do
  user.votes.create(dish: Dish.all.sample, status: rand(2))
end
