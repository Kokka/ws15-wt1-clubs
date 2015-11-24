require 'rails_helper'

RSpec.describe "members/new", type: :view do
  before(:each) do
    assign(:member, Member.new(
      :firstName => "Test",
      :lastName => "Name",
      :password => "Password"
    ))
  end

  it "renders new member form" do
    render

    assert_select "form[action=?][method=?]", members_path, "post" do

      assert_select "input#member_firstName[name=?]", "member[firstName]"

      assert_select "input#member_lastName[name=?]", "member[lastName]"
	  
      assert_select "input#member_password[name=?]", "member[password]"
    end
  end
end
