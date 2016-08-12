require 'rails_helper'

RSpec.describe "admin/tokens/show", type: :view do
  before(:each) do
    @admin_token = assign(:admin_token, Admin::Token.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
