class UserOrder < ApplicationRecord
    belongs_to :user 
    belongs_to :order 
    has_many :order_items, through: :order 
    has_many :products, through: :order_items 
end
