require 'rails_helper'

describe "creating a new group, member, membership", type: :feature do
  before :each do
    @group_name = "Test Group"
    Group.create(name: @group_name)
    @first_name = "First Name"
    @last_name = "Last Name"
    @password = "Password"
    Member.create(firstName: @first_name, lastName: @last_name, password: @password)
    @membership_date = "10.12.2015"
    Membership.create(joined: @membership_date, group_id: '1', member_id: '1')
  end
  it "group page shows the member name" do
    visit '/groups/1'
    expect(page).to have_content @first_name
  end
end