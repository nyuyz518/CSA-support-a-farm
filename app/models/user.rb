class User < ApplicationRecord
  has_many :shares
  has_many :farms, through: :shares
  has_many :wish_list_items

  accepts_nested_attributes_for :wish_list_items

end
