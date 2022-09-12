class CreateHouses < ActiveRecord::Migration[6.1]
  def change
    create_table :houses do |t|
      t.integer :house_number
      t.integer :floor_number
      t.integer :number_of_rooms
      t.string :location
      t.string :estimated_cost
      t.string :view_day
      t.string :type_of_house
      t.string :image_url
      t.integer :vendor_id
      t.integer :user_id
    end
  end
end
