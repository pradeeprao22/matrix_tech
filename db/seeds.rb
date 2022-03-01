# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

brand = Brand.create(brand_name: "example", brand_description: "example description")
Product.create(product_name: "example product", product_description: "This is just an example description", brand_id: brand.brand_id, sku_code: "ABC123")
