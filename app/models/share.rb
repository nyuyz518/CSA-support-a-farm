class Share < ApplicationRecord
  belongs_to :user
  belongs_to :farm

  # def share_counts_by_category
  #   self.all.category.count
  # end
  #
  # def total_cost
  #   total_cost = []
  #   self.all.each do |s|
  #     total_cost << s.cost
  #   end
  # end
end
