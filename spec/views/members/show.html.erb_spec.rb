require 'rails_helper'

RSpec.describe "members/show", type: :view do
  before(:each) do
    @members = assign(:member, Member.create!(
      :firstName => "Test",
      :lastName => "Name",
      :password => "Password"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Test/)
    expect(rendered).to match(/Name/)
  end
end
