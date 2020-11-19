class ProductGym < ApplicationRecord
    belongs_to :gym 
    belongs_to :product 
end
