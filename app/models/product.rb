class Product < ApplicationRecord
    belongs_to :brand
    self.primary_key = :product_id
    before_create do
      self.product_id = SecureRandom.uuid[31..] unless self.product_id
    end
end
