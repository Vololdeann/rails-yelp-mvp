class CreateRestaurants < ActiveRecord::Migration[7.1]
  def change
    create_table :restaurants do |t|
      t.text :name
      t.text :address
      t.string :phone_number
      t.text :category
      t.string :review
      t.string :text

      t.timestamps
    end
  end
end
