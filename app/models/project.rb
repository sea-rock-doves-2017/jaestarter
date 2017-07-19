class Project < ApplicationRecord
  validates :title, :description, :amount_donated, :goal_amount, :end_date, presence: true

  def percent_funded
    (amount_donated / goal_amount) * 100
  end

  def remaining_amount
    
  end

  def remaining_time
      Date.today - end_date
  end
end
