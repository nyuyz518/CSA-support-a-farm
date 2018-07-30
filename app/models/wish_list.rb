class WishList < ApplicationRecord
  belongs_to :user
  has_many :products
  has_many :farms, through: :products
end
