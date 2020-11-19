class Product < ApplicationRecord
    has_many :quantities
    has_many :product_categories
    has_many :product_gyms 
    has_many :order_items
    has_many :reviews
    has_many :ratings
    has_many :gyms, through: :product_gyms
    has_many :sizes, through: :quantities
    has_many :categories, through: :product_categories
    has_many :users, through: :reviews
end
