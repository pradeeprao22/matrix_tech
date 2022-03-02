require 'rails_helper'

RSpec.describe "Brands", type: :request do

  before :each do
    @brand = Brand.create(brand_name: "nike", brand_description: "this is just an example") 
    @product = Product.create(product_name: 'example product', product_description: 'this is product description', sku_code: 'ABC123456789', brand: @brand)
  end


  describe 'GET #index' do
  
    before(:example) { get brands_path }

    it "is a success" do
      expect(response).to have_http_status(:ok)
    end

    it "renders 'index' template" do
      expect(response).to render_template('index')
    end
  end

  describe 'GET #new' do
  
    before(:example) { get new_brand_path } 

    it "is a success" do
      expect(response).to have_http_status(:ok)
    end

    it "renders 'new' template" do
      expect(response).to render_template('new')
    end

  end

  describe 'GET #edit' do

    before(:example) { get edit_brand_path(@brand.brand_id) } 

    it "is a success" do
      expect(response).to have_http_status(:ok)
    end

    it "renders 'new' template" do
      expect(response).to render_template('edit')
    end

  end
end
