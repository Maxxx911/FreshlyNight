SPECIAL FOR RUBIZZA HACK NIGHT
# Implemented:
- Dish(containce ingregients, has many products)  
- Product(has many components, weight(allows you to set how much this product will affect the rating of the dish))
- Component(belong Dish and Product, weight(allows you to set how much this component will affect the rating of the dish))
- Vote(contains connection with user and dish, and contains status(like, dislake))
- User
- 2 buttons(like, dislake) — when you submit like or dislake for dishes, components and products  start calculate his rating. Based on the rating, the recommended dish is shown.
	
 # How to show recomendend dish:
If this is your first time using the application, you will need to register. After then you will be asked to vote for the dish, when you press button-like or dislike, program start to calculate rating for all products and marks dish, which you vote, so that in the future don’t show it. After the rating of dishes was calculated, taking a dish which has maximum rating

# What can be implemented:
„Set for you“(Creating sets for you, for this need to add labels to the products by type: meat, vegetables, fruits, sauces, etc.). Since there is an individual product rating, you can create combinations based on this rating.
„Scip products/ components“  Сan add the ability to add products to the list that you would not want to see in your dish, based on this list do not show dishes containing this product / component.
