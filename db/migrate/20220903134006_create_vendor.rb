class CreateVendor < ActiveRecord::Migration[6.1]
  def change
    create_table :vendors do |t|
      t.string :name
      t.integer :phone_number
      t.string :location
    end
  end
end
