class Farm < ApplicationRecord
  has_many :shares
  has_many :users, through: :shares
  has_many :products

end
