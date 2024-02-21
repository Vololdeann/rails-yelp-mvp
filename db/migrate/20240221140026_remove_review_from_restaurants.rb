class RemoveReviewFromRestaurants < ActiveRecord::Migration[7.1]
  def change
    remove_column :restaurants, :review, :string
  end
end
