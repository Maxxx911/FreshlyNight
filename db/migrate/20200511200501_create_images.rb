class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.string :url, null: false, default: true
      t.string :title, null: false, default: true
    end

    create_table :dish_images do |t|
      t.references :image, index: true
      t.references :dish, index: true
    end

    create_table :image_menus do |t|
      t.references :image, index: true
      t.references :menu, index: true
    end

    create_table :image_recepts do |t|
      t.references :image, index: true
      t.references :recept, index: true
    end
  end
end
