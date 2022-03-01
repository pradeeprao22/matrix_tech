class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products, id: false do |t|
      t.string :product_name
      t.text :product_description
      t.string :sku_code
      t.string :product_id
      t.index :product_id, unique: true

      t.timestamps
    end
  end
end
