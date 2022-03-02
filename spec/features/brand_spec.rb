require 'rails_helper'
describe 'Brands create process', type: :feature do
 
 before :each do
   @brand = Brand.create(brand_name: "nike", brand_description: "this is just an example") 
 end

 it 'create new brand' do
   visit new_brand_path
   fill_in 'brand[brand_name]', with: 'example brand'
   fill_in 'brand[brand_description]', with: 'this is brand description'
   
   click_button 'Submit'
   expect(page.driver.status_code).to eq(200)

   #Need to use factory bot to implement this
   #expect(current_path).to eq(brands_path(@brand.brand_id))
 end

 it 'Edit brand' do
    visit edit_brand_path(@brand.brand_id)

    fill_in 'brand[brand_name]', with: 'example brand update'
    fill_in 'brand[brand_description]', with: 'this is brand description edit'
    
    click_button 'Submit'

    expect(page.driver.status_code).to eq(200)

    #Need to use factory bot to implement this
    #expect(current_path).to eq(brands_path(@brand.brand_id))
  end
end