class OrdersController < ApplicationController
    skip_before_action :verify_authenticity_token
    skip_before_action :authorized

    def create
        
    end 
end
