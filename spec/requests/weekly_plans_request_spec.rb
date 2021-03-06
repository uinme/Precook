require 'rails_helper'

RSpec.describe "WeeklyPlans", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/weekly_plans/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/weekly_plans/show"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/weekly_plans/new"
      expect(response).to have_http_status(:success)
    end
  end

end
