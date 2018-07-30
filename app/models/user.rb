class User < ApplicationRecord
  has_many :shares
  has_many :farms, through: :shares
  has_many :wish_list_items

end
