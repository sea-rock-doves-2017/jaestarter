require "rails_helper"

feature 'Sign up' do
  scenario 'a user can sign up for a new account' do
    visit new_user_path

    fill_in('Name', with: Faker::Name.name)
    fill_in('Email', with: Faker::Internet.email)
    fill_in('Password', with: 'pw')
    fill_in('Password confirmation', with: 'pw')

    click_button 'Sign Up'

    expect(page).to have_current_path root_path
  end
end
