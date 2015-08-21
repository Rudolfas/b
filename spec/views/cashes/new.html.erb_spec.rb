require 'rails_helper'

RSpec.describe "cashes/new", type: :view do
  before(:each) do
    assign(:cash, Cash.new(
      :member_id => 1,
      :balance => 1.5
    ))
  end

  it "renders new cash form" do
    render

    assert_select "form[action=?][method=?]", cashes_path, "post" do

      assert_select "input#cash_member_id[name=?]", "cash[member_id]"

      assert_select "input#cash_balance[name=?]", "cash[balance]"
    end
  end
end
