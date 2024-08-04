require 'rails_helper'

RSpec.describe "Users", type: :request do
    let!(:user1) { FactoryBot.create(:user, name: "Thomas Anderson", email: "thomasa@example.com") }
    let!(:user2) { FactoryBot.create(:user, name: "John Constantine", email: "johnc@example.com") }
    let!(:user3) { FactoryBot.create(:user, name: "John Wick", email: "johnw@example.com") }

  describe "GET /users" do
    it "responds with 200" do
      get users_index_path

      expect(response).to have_http_status(200)
    end

    it "responds with three users" do
      get users_index_path

      expect(JSON.parse(response.body).size).to eq(3)
    end

    it "responds with specified response" do
      get users_index_path

      pp JSON.parse(response.body)
      expect(JSON.parse(response.body)).to match([
                                                   user1,
                                                   user2,
                                                   user3,
                                                   ].as_json)
    end
  end
end
