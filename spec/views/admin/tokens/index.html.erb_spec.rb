require 'rails_helper'

RSpec.describe "admin/tokens/index", type: :view do
  before(:each) do
    assign(:admin_tokens, [
      Admin::Token.create!(),
      Admin::Token.create!()
    ])
  end

  it "renders a list of admin/tokens" do
    render
  end
end
