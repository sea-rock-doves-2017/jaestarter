require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  context '#index' do
    before(:each) { get :new }

    it 'returns a status of 200' do
      expect(response).to have_http_status 200
    end

    it 'renders the #new page' do
      expect(response).to render_template :new
    end

    it 'assigns @user to a blank user' do
      expect(assigns[:user]).to be_a User
    end
  end
end
