require "rails_helper"

feature 'see projects on homepage' do
  scenario 'user visits homepage and sees a list of currently active projects' do
    10.times { FactoryGirl.create :project }

    visit '/'

    expect(page).to have_content 'Active Projects'
    expect(page).to have_content Project.first.title
    expect(page).to have_content Project.first.percent_funded
    expect(page).to have_content Project.first.end_date
    expect(page).to have_content Project.first.amount_donated
  end
end
