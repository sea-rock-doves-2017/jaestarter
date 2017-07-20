require 'rails_helper'

RSpec.describe SessionsController, type: :controller do
  context '#new' do
    before(:each) { get :new }

    it 'returns a status of 200' do
      expect(response).to have_http_status 200
    end

    it 'renderthe sessions#new page' do
      expect(response).to render_template :new
    end

    it 'assigns @user' do
      expect(assigns[:user]).to be_a User
    end
  end

  context '#create' do
    let!(:user) { FactoryGirl.create :user }

    before(:each) { post :create, params: { session: { email: user.email, password: 'pw' } } }

    it 'returns a status of 302' do
      expect(response).to have_http_status 302
    end

    it 'redirects to the projects#index page when given valid params' do
      expect(response).to redirect_to root_path
    end

    it 're-renders the #new page when given a bad email' do
      post :create, params: { session: { email: 'nope@nope.com', password: 'pw' } }
      expect(response).to render_template :new
    end

    it 're-renders the #new page when given a bad password' do
      post :create, params: { session: { email: user.email, password: 'pwd' } }
      expect(response).to render_template :new
    end
  end
end
