require 'rails_helper'

RSpec.describe "admin/tokens/edit", type: :view do
  before(:each) do
    @admin_token = assign(:admin_token, Admin::Token.create!())
  end

  it "renders the edit admin_token form" do
    render

    assert_select "form[action=?][method=?]", admin_token_path(@admin_token), "post" do
    end
  end
end
