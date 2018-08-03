class UserItem < ApplicationRecord
  belongs_to :user
  belongs_to :wish_list_item
  
end
