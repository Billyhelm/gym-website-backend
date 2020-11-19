class Gym < ApplicationRecord
    has_many :user_gyms
    has_many :product_gyms
    has_many :products, through: :product_gyms
end
