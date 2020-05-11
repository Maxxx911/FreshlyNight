class CreateCaloriesTable < ActiveRecord::Migration[5.2]
  def change
    create_table :calories do |t|
      t.references :dish, index: true
      t.integer :protein_value, null: false, default: 0
      t.integer :carbohydrates_value, null: false, default: 0
      t.integer :fat_value, null: false, default: 0
      t.integer :total_calories, null: false, default: 0
    end
  end
end
