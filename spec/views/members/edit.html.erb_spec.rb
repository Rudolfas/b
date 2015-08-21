require 'rails_helper'

RSpec.describe "members/edit", type: :view do
  before(:each) do
    @member = assign(:member, Member.create!(
      :name => "MyString",
      :surname => "MyString",
      :nick => "MyString"
    ))
  end

  it "renders the edit member form" do
    render

    assert_select "form[action=?][method=?]", member_path(@member), "post" do

      assert_select "input#member_name[name=?]", "member[name]"

      assert_select "input#member_surname[name=?]", "member[surname]"

      assert_select "input#member_nick[name=?]", "member[nick]"
    end
  end
end
