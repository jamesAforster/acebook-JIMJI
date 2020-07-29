require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
        :email_address => "Email Address",
        :password => "Password"
      ),
      User.create!(
        :email_address => "Email Address",
        :password => "Password"
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => "Email Address".to_s, :count => 2
    assert_select "tr>td", :text => "Password".to_s, :count => 2
  end
end
