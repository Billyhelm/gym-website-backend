class ProductsController < ApplicationController

    def index 
        products = Product.all 
        render json: products, include: {quantities: {}, gyms: {}, sizes: {}}
    end 

    def show 
        product = Product.find(params[:id])
        render json: product, include: {quantities: {}, gyms: {}, sizes: {}}
    end 
end
