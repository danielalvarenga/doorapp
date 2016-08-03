require 'rails_helper'

RSpec.describe "tokens/new", type: :view do
  before(:each) do
    assign(:token, Token.new(
      :secret_key => "MyString",
      :temporary => false,
      :app => nil,
      :user => nil
    ))
  end

  it "renders new token form" do
    render

    assert_select "form[action=?][method=?]", tokens_path, "post" do

      assert_select "input#token_secret_key[name=?]", "token[secret_key]"

      assert_select "input#token_temporary[name=?]", "token[temporary]"

      assert_select "input#token_app_id[name=?]", "token[app_id]"

      assert_select "input#token_user_id[name=?]", "token[user_id]"
    end
  end
end
