class AddBrandToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column  :products, :brand_id, :string, null: true
    add_index   :products, :brand_id
  end
end
