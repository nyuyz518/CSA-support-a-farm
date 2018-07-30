class CreateFarms < ActiveRecord::Migration[5.2]
  def change
    create_table :farms do |t|
      t.string :name
      t.string :location
      t.integer :year_est

      t.timestamps
    end
  end
end
