class Project < ApplicationRecord
  validates :title, :description, :amount_donated, :goal_amount, :end_date, presence: true

  def percent_funded
    (amount_donated.to_f / goal_amount) * 100
  end

  def remaining_amount
    goal_amount - amount_donated
  end

  def remaining_time
    (end_date.to_datetime - Date.today).to_i
  end
end
