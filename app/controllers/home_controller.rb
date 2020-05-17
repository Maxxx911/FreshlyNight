class HomeController < ApplicationController
  def index
    @dish_of_day = Dish.order("RANDOM()").limit(1).first()
    @recept_dish_of_day = @dish_of_day.recept
    @top_four_recept = Recept.order(:rating).limit(4)
    @profile_callories = current_user.calory_users.where("created_at >= ?", Time.zone.now.beginning_of_day)
  end
end
