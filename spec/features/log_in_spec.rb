require 'rails_helper'

feature 'Log in' do
  given(:user) { create(:user) }
  given(:admin) { create(:admin) }

  scenario "log in as persisted user" do
    visit root_path
    click_link('Log in', match: :first)
    fill_in 'Enter Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Log In'

    expect(page).to have_content 'My account'
    expect(page).not_to have_content 'Admin panel'
    expect(page).not_to have_content 'Log in'
    expect(current_path).to eq root_path
  end
end
