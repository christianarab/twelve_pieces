class CreateRestaurants < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :cuisine
      t.string :location
      t.text :description
      t.integer :rating

      t.timestamps
    end
  end
end
