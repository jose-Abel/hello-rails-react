require 'rails_helper'

RSpec.describe RandomGreetingsController, type: :controller do
  describe 'GET #index' do
    let!(:greetings) { create_list(:greeting, 5) }
  
    context 'should choose a random greeting from the db and return it' do
      it 'response with success' do
        get(:index)
        byebug
        json_response = JSON.parse(response.body)

        expect(response).to have_http_status(:success)
        expect(json_response.count).to eq(10)
        expect(json_response.first['id']).to eq(articles.first.id)
      end
    end
  end
end