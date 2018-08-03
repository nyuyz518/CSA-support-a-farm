class Share < ApplicationRecord
  belongs_to :user
  belongs_to :farm
  belongs_to :category

end
