require 'rails_helper'

RSpec.describe "admin/tokens/new", type: :view do
  before(:each) do
    assign(:admin_token, Admin::Token.new())
  end

  it "renders new admin_token form" do
    render

    assert_select "form[action=?][method=?]", admin_tokens_path, "post" do
    end
  end
end
