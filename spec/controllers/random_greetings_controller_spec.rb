require 'rails_helper'

RSpec.describe RandomGreetingsController, type: :controller do
  describe 'GET #index' do
    let!(:hello) { create(:greeting, message: "hello") }
    let!(:ciao) { create(:greeting, message: "ciao") }
    let!(:hola) { create(:greeting, message: "hola") }
    let!(:gutten_morgen) { create(:greeting, message: "Gutten Morgen") }
    let!(:bonjour) { create(:greeting, message: "bonjour") }
  
    context 'should choose a random greeting from the db and return it' do
      it 'response with success' do
        get(:index)
        json_response = JSON.parse(response.body)

        expect(response).to have_http_status(:success)
      end
    end
  end
end