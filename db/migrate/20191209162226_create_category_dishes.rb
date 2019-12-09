class CreateCategoryDishes < ActiveRecord::Migration[5.2]
  def change
    create_table :categories_dishes do |t|
      t.belongs_to :category, index: true
      t.belongs_to :dish, index: true
    end
  end
end
