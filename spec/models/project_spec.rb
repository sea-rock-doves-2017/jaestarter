require 'rails_helper'

RSpec.describe Project, type: :model do
  let(:project) { FactoryGirl.build :project }

  context '#validations' do
    it { is_expected.to validate_presence_of :title }
    it { is_expected.to validate_presence_of :description }
    it { is_expected.to validate_presence_of :amount_donated }
    it { is_expected.to validate_presence_of :goal_amount }
    it { is_expected.to validate_presence_of :end_date }
  end

  context '#virtual attributes' do
    it 'has an amount that has not been donated yet' do
      expect(project.remaining_amount).to eq 40
    end

    it 'has a percentage funded' do
      expect(project.percent_funded).to eq 20
    end

    it 'has an amount of time remaining until funding ends' do
      expect(project.remaining_time).to eq((project.end_date.to_datetime - Date.today).to_i)
    end
  end
end
