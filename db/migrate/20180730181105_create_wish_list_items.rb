class CreateWishListItems < ActiveRecord::Migration[5.2]
  def change
    create_table :wish_list_items do |t|
      t.string :item
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
