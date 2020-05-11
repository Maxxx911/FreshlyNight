class AddTotalRatingToDishes < ActiveRecord::Migration[5.2]
  def change
    add_column :dishes, :total_rating, :integer, null: false, default: 0
  end
end
