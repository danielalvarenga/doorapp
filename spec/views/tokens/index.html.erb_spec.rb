require 'rails_helper'

RSpec.describe "tokens/index", type: :view do
  before(:each) do
    assign(:tokens, [
      Token.create!(
        :secret_key => "Secret Key",
        :temporary => false,
        :app => nil,
        :user => nil
      ),
      Token.create!(
        :secret_key => "Secret Key",
        :temporary => false,
        :app => nil,
        :user => nil
      )
    ])
  end

  it "renders a list of tokens" do
    render
    assert_select "tr>td", :text => "Secret Key".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
