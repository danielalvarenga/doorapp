require 'rails_helper'

RSpec.describe "tokens/show", type: :view do
  before(:each) do
    @token = assign(:token, Token.create!(
      :secret_key => "Secret Key",
      :temporary => false,
      :app => nil,
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Secret Key/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
