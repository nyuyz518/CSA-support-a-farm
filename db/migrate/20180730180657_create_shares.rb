class CreateShares < ActiveRecord::Migration[5.2]
  def change
    create_table :shares do |t|
      t.integer :price
      t.boolean :frequency
      t.references :user, foreign_key: true
      t.references :farm, foreign_key: true

      t.timestamps
    end
  end
end
