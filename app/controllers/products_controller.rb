class ProductsController < ApplicationController
    skip_before_action :authorized

    def index 
        products = Product.all 
        render json: products, include: {quantities: {}, gyms: {}, sizes: {}, categories: {}}
    end 

    def show 
        product = Product.find(params[:id])
        render json: product, include: {quantities: {}, gyms: {}, sizes: {}, categories: {}}
    end 
end
