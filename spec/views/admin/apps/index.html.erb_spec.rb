require 'rails_helper'

RSpec.describe "admin/apps/index", type: :view do
  before(:each) do
    assign(:admin_apps, [
      Admin::App.create!(),
      Admin::App.create!()
    ])
  end

  it "renders a list of admin/apps" do
    render
  end
end
