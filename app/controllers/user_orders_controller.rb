class UserOrdersController < ApplicationController

    skip_before_action :verify_authenticity_token
    skip_before_action :authorized

    def create
        user_order = UserOrder.create(user_order_params)
        render json: user_order
    end 

    private

    def user_order_params    
        params.require(:user_order).permit(:order_id, :user_id)
    end 

end
