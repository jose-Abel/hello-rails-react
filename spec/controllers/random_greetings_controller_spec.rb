require 'rails_helper'

RSpec.describe RandomGreetingsController, type: :controller do
  describe 'GET #index' do
    let!(:hello) { create(:greeting, message: 'Hello!') }
    let!(:ciao) { create(:greeting, message: 'Ciao!') }
    let!(:hola) { create(:greeting, message: 'Hola!') }
    let!(:gutten_morgen) { create(:greeting, message: 'Hallo!') }
    let!(:bonjour) { create(:greeting, message: 'Bonjour!') }

    context 'should choose a random greeting from the db and return it' do
      it 'response with success' do
        get(:index)
        json_response = JSON.parse(response.body)

        expect(response).to have_http_status(:success)
        expect(json_response['message']).not_to eq(nil)
      end
    end
  end
end
