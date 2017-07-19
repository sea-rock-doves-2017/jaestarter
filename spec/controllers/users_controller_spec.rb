require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  let(:name) { Faker::Name.name }
  let(:email) { Faker::Internet.email }

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

  context '#create' do
    before(:each) { post :create, params: { user: FactoryGirl.attributes_for(:user) } }

    it 'returns a status of 302' do
      expect(response).to have_http_status 302
    end

    it 'redirects to the projects#index page' do
      expect(response).to redirect_to root_path
    end
    #
    it 'saves a user to the database' do
      expect { post :create, params: { user: FactoryGirl.attributes_for(:user) } }.to change { User.count }.by(+1)
    end
  end
end
