class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :brand
      t.integer :price
      t.integer :km
      t.string :fuel
      t.integer :year
      t.text :description
      t.string :model

      t.timestamps null: false
    end
  end
end
