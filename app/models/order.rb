class Order < ApplicationRecord
    has_many :order_discounts
    has_many :user_orders 
    has_many :order_items 
    has_many :discounts, through: :order_discounts
    has_many :products, through: :order_items
    
end
