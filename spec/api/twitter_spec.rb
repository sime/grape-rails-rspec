require 'rails_helper'

describe Twitter::API do
  describe "GET /api/v1/statuses" do
    it "returns an empty array of statuses" do
      get "/api/v1/statuses"
      expect(response.status).to eq(200)
      expect(JSON.parse(response.body)).to eq []
    end
  end
  describe "GET /api/v1/statuses/:id" do
    it "returns a status by id" do
      status = Status.create!
      get "/api/v1/statuses/#{status.id}"
      expect(response.body).to eq status.to_json
    end
  end
end

