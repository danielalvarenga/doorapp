require 'rails_helper'

RSpec.describe "Admin::Tokens", type: :request do
  describe "GET /admin_tokens" do
    it "works! (now write some real specs)" do
      get admin_tokens_path
      expect(response).to have_http_status(200)
    end
  end
end
