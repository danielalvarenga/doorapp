require "rails_helper"

RSpec.describe Admin::AppsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/admin/apps").to route_to("admin/apps#index")
    end

    it "routes to #new" do
      expect(:get => "/admin/apps/new").to route_to("admin/apps#new")
    end

    it "routes to #show" do
      expect(:get => "/admin/apps/1").to route_to("admin/apps#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/admin/apps/1/edit").to route_to("admin/apps#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/admin/apps").to route_to("admin/apps#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/admin/apps/1").to route_to("admin/apps#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/admin/apps/1").to route_to("admin/apps#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/admin/apps/1").to route_to("admin/apps#destroy", :id => "1")
    end

  end
end
