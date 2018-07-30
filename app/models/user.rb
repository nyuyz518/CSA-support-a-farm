class User < ApplicationRecord
  has_many :shares
  has_many :farms, through: :shares
  has_one :wish_list
  has_many :products, through: :wish_list
end
