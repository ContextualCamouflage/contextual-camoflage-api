require 'rails_helper'
require 'faker'

RSpec.describe "Anecdotes API" do
  let!(:user) { create(:user) }
  let!(:submission) { create(:submission) }
  let!(:anecdote) { create(:anecdote, cookie: submission.cookie) }
  let!(:auth_headers) {
    {
      'Content-Type'=>'application/json',
      'Authorization'=>'Basic dGVzdEB0ZXN0LmNvbTpwYXNzd29yZA==',
    }
  }

  describe "GET /anecdotes/random" do
    before { get "/api/v1/anecdotes/random", params: nil, headers: auth_headers}

    context "when anecdote exists" do
      it "returns status code 200" do
        expect(response).to have_http_status(200)
      end

      it "returns a random anecdote" do
        expect(json.size).to eq(5)
      end
    end


    context "when no anecdotes exist" do
      it "returns status code 200" do
        expect(response).to have_http_status(200)
      end

      it "returns an empty data response" do
        expect(response.body).to match(/null/)
      end
    end
  end

  describe "POST /anecdotes" do
    let(:valid_attributes) { {anecdote: { body: 'This is my anecdote!', cookie: 'thisismycookie' }} }

    context "when request attributes are valid" do
      before { post "/api/v1/anecdotes", params: valid_attributes, headers: auth_headers }

      it "returns status code 204" do
        expect(response).to have_http_status(204)
      end
    end

    context "when request is invalid" do
      before { post "/api/v1/anecdotes", params: {}, headers: auth_headers }

      it "returns status code 422" do
        expect(response).to have_http_status(422)
      end

      it "returns a failure message" do
        expect(response.body).to match(/Validation failed: Cookie can't be blank/)
      end
    end
  end

end
