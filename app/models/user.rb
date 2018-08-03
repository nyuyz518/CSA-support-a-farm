class User < ApplicationRecord
  has_many :shares
  has_many :farms, through: :shares
  has_many :categories, through: :shares
  has_many :user_items
  has_many :wish_list_items, through: :user_items

  validates :user_name, presence: { case_sensitive: false }
  has_secure_password

end
