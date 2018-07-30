class WishList < ApplicationRecord
  belongs_to :user
  has_many :products
  has_one :farms, through: :products
end
