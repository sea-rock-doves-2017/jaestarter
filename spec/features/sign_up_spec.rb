require "rails_helper"

feature 'Sign up' do
  scenario 'a user can sign up for a new account' do
    visit root_path

    click_link 'Sign up'

    expect(page).to have_current_path new_user_path

    fill_in('Name', with: Faker::Name.name)
    fill_in('Email', with: Faker::Internet.email)
    fill_in('Password', with: 'pw')
    fill_in('Password Confirmation', with: 'pw')

    click_button 'Submit'

    expect(page).to have_current_path root_path
  end
end
