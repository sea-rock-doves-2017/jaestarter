require 'rails_helper'

RSpec.describe ProjectsController, type: :controller do
  context '#index' do
    before(:each) { get :index }

    it 'returns a status of 200' do
      expect(response).to have_http_status 200
    end

    it 'renders the index page' do
      expect(response).to render_template :index
    end

    it 'assigns @projects to all projects' do
      expect(assigns[:projects]).to all(be_a Project)
    end

  end
end
