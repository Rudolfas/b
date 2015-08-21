require 'rails_helper'

RSpec.describe "cashes/edit", type: :view do
  before(:each) do
    @cash = assign(:cash, Cash.create!(
      :member_id => 1,
      :balance => 1.5
    ))
  end

  it "renders the edit cash form" do
    render

    assert_select "form[action=?][method=?]", cash_path(@cash), "post" do

      assert_select "input#cash_member_id[name=?]", "cash[member_id]"

      assert_select "input#cash_balance[name=?]", "cash[balance]"
    end
  end
end
