class CreateHouses < ActiveRecord::Migration[7.0]
  def change
    create_table :houses do |t|
      t.integer :square_feet
      t.integer :bedrooms
      t.integer :bathrooms
      t.string :address

      t.timestamps
    end
  end
end
