require 'rails_helper'
describe 'Products create process', type: :feature do
 
 before :each do
   brand = Brand.create(brand_name: "nike", brand_description: "this is just an example") 
   @product = Product.create(product_name: 'example product', product_description: 'this is product description', sku_code: 'ABC123456789', brand: brand)
 end

 it 'create new product' do
   visit new_product_path
   fill_in 'product[product_name]', with: 'example product'
   fill_in 'product[product_description]', with: 'this is product description'
   
   select("nike", from: "product[brand_id]").select_option

   click_button 'Submit'
   expect(page.driver.status_code).to eq(200)

   #Need to use factory bot to implement this
   #expect(current_path).to eq(products_path(@product.product_id))
 end

 it 'Edit Product' do
    visit edit_product_path(@product.product_id)

    fill_in 'product[product_name]', with: 'example product update'
    fill_in 'product[product_description]', with: 'this is product description edit'
    
    select("nike", from: "product[brand_id]").select_option

    click_button 'Submit'

    expect(page.driver.status_code).to eq(200)

    #Need to use factory bot to implement this
    #expect(current_path).to eq(products_path(@product.product_id))
  end
end