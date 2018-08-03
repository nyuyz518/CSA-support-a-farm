class CreateWishListItems < ActiveRecord::Migration[5.2]
  def change
    create_table :wish_list_items do |t|
      t.string :item


      t.timestamps
    end
  end
end
