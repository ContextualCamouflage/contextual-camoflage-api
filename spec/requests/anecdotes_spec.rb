require 'rails_helper'
require 'faker'

RSpec.describe "Anecdotes API" do
  let!(:submission) { create(:submission) }
  let!(:anecdote) { create(:anecdote) }

  describe "GET /anecdotes/random" do
    before { get "/anecdotes/random", nil, auth_headers}

    context "when anecdote exists" do
      it "returns status code 200" do
        expect(response).to have_http_status(200)
      end

      it "returns a random anecdote" do
        expect(json.size).to eq(20)
      end
    end

    context "when no anecdotes exist" do
      it "returns status code 200" do
        expect(response).to have_http_status(200)
      end

      it "returns aan empty data response" do
        expect(response.body).to match(/null/)
      end
    end
  end

  describe "POST /anecdotes" do
    let(:valid_attributes) { { body: 'This is my anecdote!', cookie: 'thisismycookie' } }

    context "when request attributes are valid" do
      before { post "/anecdotes", params: valid_attributes}

      it "returns status code 204" do
        expect(response).to have_http_status(204)
      end
    end

    context "when request is invalid" do
      before { post "/anecdotes", params: {} }

      it "returns status code 422" do
        expect(response).to have_http_status(422)
      end

      it "returns a failure message" do
        expect(response.body).to match(/Validation failed: Cookie can't be blank/)
      end
    end
  end

end
