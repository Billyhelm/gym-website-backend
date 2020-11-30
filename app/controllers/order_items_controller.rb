class OrderItemsController < ApplicationController

    skip_before_action :verify_authenticity_token
    skip_before_action :authorized

    def create
        order_item = OrderItem.create(order_items_params)
        # render json: order_item
    end 

    private

    def order_items_params    
        params.require(:order_item).permit(:order_id, :product_id, :amount, :size)
    end 

end
