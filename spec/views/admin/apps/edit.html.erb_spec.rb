require 'rails_helper'

RSpec.describe "admin/apps/edit", type: :view do
  before(:each) do
    @admin_app = assign(:admin_app, Admin::App.create!())
  end

  it "renders the edit admin_app form" do
    render

    assert_select "form[action=?][method=?]", admin_app_path(@admin_app), "post" do
    end
  end
end
