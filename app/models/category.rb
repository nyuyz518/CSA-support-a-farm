class Category < ApplicationRecord
  has_many :shares
  has_many :users, through: :shares
  has_many :farms, through: :shares
end
