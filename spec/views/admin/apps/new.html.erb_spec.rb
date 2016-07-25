require 'rails_helper'

RSpec.describe "admin/apps/new", type: :view do
  before(:each) do
    assign(:admin_app, Admin::App.new())
  end

  it "renders new admin_app form" do
    render

    assert_select "form[action=?][method=?]", admin_apps_path, "post" do
    end
  end
end
