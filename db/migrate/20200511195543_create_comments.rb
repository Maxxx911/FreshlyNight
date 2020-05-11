class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.text :message
      t.timestamps
    end

    create_table :comment_users do |t|
      t.references :user
      t.references :comment
      t.timestamps
    end

    create_table :comment_dishes do |t|
      t.references :comment
      t.references :dish
      t.timestamps
    end
  end
end
