require 'rails_helper'

RSpec.describe "cashes/index", type: :view do
  before(:each) do
    assign(:cashes, [
      Cash.create!(
        :member_id => 1,
        :balance => 1.5
      ),
      Cash.create!(
        :member_id => 1,
        :balance => 1.5
      )
    ])
  end

  it "renders a list of cashes" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
