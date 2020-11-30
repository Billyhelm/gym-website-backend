class OrdersController < ApplicationController
    skip_before_action :verify_authenticity_token
    skip_before_action :authorized

    def create
        order = Order.create(order_params)
        render json: order
    end 

    private

    def order_params 
        
        params.require(:order).permit(:sub_total, :total, :status)
    end 

end
