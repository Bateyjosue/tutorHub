require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe 'POST #create' do
    context 'when valid user parameters are provided' do
      let(:user_params) { attributes_for(:user) }

      it 'creates a new user' do
        expect do
          post :create, params: { user: user_params }
        end.to change(User, :count).by(1)
      end

      it 'returns a successful response' do
        post :create, params: { user: user_params }
        expect(response).to have_http_status(:created)
      end

      it 'returns a success message' do
        post :create, params: { user: user_params }
        expect(JSON.parse(response.body)['message']).to eq('User created successfully')
      end
    end

    context 'when invalid user parameters are provided' do
      let(:user_params) { attributes_for(:user, name: nil) }

      it 'does not create a new user' do
        expect do
          post :create, params: { user: user_params }
        end.not_to change(User, :count)
      end

      it 'returns an unprocessable entity response' do
        post :create, params: { user: user_params }
        expect(response).to have_http_status(:unprocessable_entity)
      end

      it 'returns an error message' do
        post :create, params: { user: user_params }
        expect(JSON.parse(response.body)['errors']).to include("Name can't be blank")
      end
    end
  end
end
