class CreateCaloryUser < ActiveRecord::Migration[5.2]
  def change
    create_table :calory_users do |t|
      t.references :calory, index: true
      t.references :user, index: true
      t.integer :standart, null: false, default: 2000
      t.timestamps
    end
  end
end
