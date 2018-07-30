class Product < ApplicationRecord
  belongs_to :farm
  belongs_to :wish_list
end
