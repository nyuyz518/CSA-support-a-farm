class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :name
      t.integer :price_per_pickup
      t.integer :pickup_count
      t.date :start_date
      t.date :end_date
      
      t.timestamps
    end
  end
end
