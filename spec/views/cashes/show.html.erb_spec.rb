require 'rails_helper'

RSpec.describe "cashes/show", type: :view do
  before(:each) do
    @cash = assign(:cash, Cash.create!(
      :member_id => 1,
      :balance => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/1.5/)
  end
end
