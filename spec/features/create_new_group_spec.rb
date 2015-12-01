require 'rails_helper'

describe "creating a new group", type: :feature do
  before :each do
    @group_name = "Test Group"
    Group.create(name: @group_name)
  end
  it "group page shows the groups" do
    visit '/groups/'
    expect(page).to have_content @group_name
  end
  it "new button goes to new Group page" do
    visit '/groups/'
    #save_and_open_page
    click_link 'New Group'
    expect(page).to have_content "New Group"
  end
  it "creates a new group" do
    expect do
      visit '/groups/new'
      fill_in 'Name', with: 'Group created by test'
      click_button 'Create Group'
    end.to change{Group.count}.by(1)
  end

end