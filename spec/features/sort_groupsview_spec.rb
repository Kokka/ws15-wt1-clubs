require 'rails_helper'

describe "sorting groups", type: :feature do
  before :each do
    @group_name1 = "CCC"
    Group.create(name: @group_name1)
    @group_name2 = "BBB"
    Group.create(name: @group_name2)
    @group_name3 = "AAA"
    Group.create(name: @group_name3)
  end
  it "shows the initial group names" do
    expect do
      visit '/groups/'
	  page.body.should =~ /CCC.*BBB.*AAA/
    end
  end
  it "sorts the group names" do
    expect do
      visit '/groups/'
      click_button 'Name'
	  page.body.should =~ /AAA.*BBB.*CCC/
    end
  end
end