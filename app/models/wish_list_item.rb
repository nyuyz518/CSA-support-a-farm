class WishListItem < ApplicationRecord
  belongs_to :user

  def wish_list_item_attributes=(wish_list_item)
    self.wish_list_item = WishListItem.find_or_create_by(item: wish_list_item.item, user_id: wish_list_item.user.id)
    self.wish_list_item.update(wish_list_item)
  end
  
end
