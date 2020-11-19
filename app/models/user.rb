class User < ApplicationRecord
    has_many :user_orders 
    has_many :user_gyms
    has_many :reviews 
    has_many :ratings
    has_many :gyms, through: :user_gyms
    has_many :products, through: :reviews
end
