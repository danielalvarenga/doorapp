require 'rails_helper'

RSpec.describe "tokens/edit", type: :view do
  before(:each) do
    @token = assign(:token, Token.create!(
      :secret_key => "MyString",
      :temporary => false,
      :app => nil,
      :user => nil
    ))
  end

  it "renders the edit token form" do
    render

    assert_select "form[action=?][method=?]", token_path(@token), "post" do

      assert_select "input#token_secret_key[name=?]", "token[secret_key]"

      assert_select "input#token_temporary[name=?]", "token[temporary]"

      assert_select "input#token_app_id[name=?]", "token[app_id]"

      assert_select "input#token_user_id[name=?]", "token[user_id]"
    end
  end
end
