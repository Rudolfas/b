require 'rails_helper'

RSpec.describe "members/index", type: :view do
  before(:each) do
    assign(:members, [
      Member.create!(
        :name => "Name",
        :surname => "Surname",
        :nick => "Nick"
      ),
      Member.create!(
        :name => "Name",
        :surname => "Surname",
        :nick => "Nick"
      )
    ])
  end

  it "renders a list of members" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Surname".to_s, :count => 2
    assert_select "tr>td", :text => "Nick".to_s, :count => 2
  end
end
