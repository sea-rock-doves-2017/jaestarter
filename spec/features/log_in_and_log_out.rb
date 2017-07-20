require "rails_helper"

feature 'Log in and log out' do
  let!(:user) { FactoryGirl.create :user }

  scenario 'a user can log in' do
    visit root_path

    click_link 'Log In'

    expect(page).to have_current_path new_session_path

    fill_in('Email', with: user.email)
    fill_in('Password', with: 'pw')

    click_button 'Log In'

    expect(page).to have_current_path root_path
  end
end
