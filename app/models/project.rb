class Project < ApplicationRecord
  validates :title, :description, :amount_donated, :goal_amount, :end_date, presence: true
end
