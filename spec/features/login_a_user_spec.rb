require 'rails_helper'

describe "login a user", type: :feature do
  before :each do
    @first_name = "Test"
    @last_name = "Test Name"
    @password = "Password"
    Member.create(firstName: @first_name, lastName: @last_name, password: @password)
  end
  it "login a user" do
    visit '/sessions/new'
      fill_in 'Name', with: 'Test Name'
      fill_in 'Password', with: 'Password'
      click_button 'Log in'
      expect(page).to have_content "Firstname: Test"
  end
end