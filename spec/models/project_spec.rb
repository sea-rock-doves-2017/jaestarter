require 'rails_helper'

RSpec.describe Project, type: :model do
  context '#validations' do
    it { is_expected.to validate_presence_of :title, :description }
    it { is_expected.to validate_presence_of :description }
    it { is_expected.to validate_presence_of :amount_donated }
    it { is_expected.to validate_presence_of :goal_amount }
    it { is_expected.to validate_presence_of :end_date }
  end
end
