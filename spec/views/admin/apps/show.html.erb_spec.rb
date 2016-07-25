require 'rails_helper'

RSpec.describe "admin/apps/show", type: :view do
  before(:each) do
    @admin_app = assign(:admin_app, Admin::App.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
