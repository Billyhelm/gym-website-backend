class QuantitiesController < ApplicationController

    skip_before_action :verify_authenticity_token
    skip_before_action :authorized

    def create 
        size = Size.find_by(name: params[:size])
        quant = Quantity.create(amount: params[:amount], size_id: size.id, product_id: params[:product])
        render json: quant
    end 

end
