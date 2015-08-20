require 'rails_helper'

RSpec.describe BLogedController, type: :controller do

  describe "GET #wall" do
    it "returns http success" do
      get :wall
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #player" do
    it "returns http success" do
      get :player
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #investor" do
    it "returns http success" do
      get :investor
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #my_account" do
    it "returns http success" do
      get :my_account
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #cashier" do
    it "returns http success" do
      get :cashier
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #support" do
    it "returns http success" do
      get :support
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #events" do
    it "returns http success" do
      get :events
      expect(response).to have_http_status(:success)
    end
  end

end
