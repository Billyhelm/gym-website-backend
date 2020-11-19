class Size < ApplicationRecord
    has_many :quantities
    has_many :products, through: :quantities
end
