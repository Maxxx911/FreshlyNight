class AddWeightToProduct < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :weight, :integer, null: false, default: 1
    add_column :components, :weight, :integer, null: false, default: 1
  end
end
