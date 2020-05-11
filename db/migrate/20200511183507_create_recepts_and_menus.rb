class CreateReceptsAndMenus < ActiveRecord::Migration[5.2]
  def change
    create_table :recepts do |t|
      t.references :dish, index: true
      t.integer :rating, null: false, default: 0
      t.string :title, null: false, default: 0
      t.text :steps, null: false, default: ''
    end

    create_table :menus do |t|
      t.integer :rating, null: false, default: 0
      t.text :description, null: false, default: ''
      t.string :title, null: false, default: ''
      t.references :calory, index: true
    end

    create_table :dish_menus do |t|
      t.belongs_to :menu, index: true
      t.belongs_to :dish, index: true
    end
  end
end
