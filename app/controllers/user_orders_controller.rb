class UserOrdersController < ApplicationController

    skip_before_action :verify_authenticity_token
    skip_before_action :authorized

    def index
        order = UserOrder.all
        render json: order, include: {user: {}, order: {}, order_items: {include: {product: {}}}, products: {}}
    end 

    def show
        order = UserOrder.where(user_id: params[:id]).all
        render json: order, include: {order: {}, order_items: {include: {product: {}}}, products: {}}
    end 

    def create
        user_order = UserOrder.create(user_order_params)
        render json: user_order
    end 

    private

    def user_order_params    
        params.require(:user_order).permit(:order_id, :user_id)
    end 

end
