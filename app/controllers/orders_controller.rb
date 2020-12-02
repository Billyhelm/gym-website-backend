class OrdersController < ApplicationController
    skip_before_action :verify_authenticity_token
    skip_before_action :authorized

    def create
        order = Order.create(order_params)
        render json: order
    end 

    def update 
        order = Order.find(params[:id])
        order.update(status: params[:status])
        user_order = UserOrder.find(params[:user_order_id])
        render json: user_order, include: {user: {}, order: {}, order_items: {include: {product: {}}}, products: {}}
        # render json: order
    end 

    private

    def order_params 
        params.require(:order).permit(:sub_total, :total, :status)
    end 

end
