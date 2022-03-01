class CreateBrands < ActiveRecord::Migration[7.0]
  def change
    create_table :brands, id: false do |t|
      t.string :brand_name 
      t.text :brand_description
      t.string :brand_id
      t.index :brand_id, unique: true

      t.timestamps
    end
  end
end
