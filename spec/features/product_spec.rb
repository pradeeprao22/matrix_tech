require 'rails_helper'
describe 'Products create process', type: :feature do
 
before :each do
   Product.create(product_name: 'example brand', product_description: 'this is brand description', sku_code: 'ABC123456789', brand_id: "12345")
 end

 it 'create new product' do
   visit '/products/new'
   fill_in 'product_name', with: 'example brand'
   fill_in 'product_description', with: 'this is brand description'
   fill_in 'brand_id', with: '12345ABCDEF'
   click_button 'Submit'
  expect(current_path).to eq(root_path)
 end
end