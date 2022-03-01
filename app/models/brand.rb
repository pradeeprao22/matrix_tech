class Brand < ApplicationRecord
    has_many :products
    self.primary_key = :brand_id
    before_create do
     self.brand_id = SecureRandom.uuid[31..] unless self.brand_id
   end
end
