require 'rails_helper'

RSpec.describe "Brands", type: :request do
  describe 'GET #index' do
  
    before(:example) { get brands_path }  # get(:index)

    it "is a success" do
      expect(response).to have_http_status(:ok)
    end

    it "renders 'index' template" do
      expect(response).to render_template('index')
    end
  end
end
