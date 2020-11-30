class ProductsController < ApplicationController
    skip_before_action :verify_authenticity_token
    skip_before_action :authorized

    def index 
        products = Product.all 
        render json: products, include: {quantities: { include: {size: {}}}, gyms: {}, sizes: {}, categories: {}}
    end 

    def show 
        product = Product.find(params[:id])
        render json: product, include: {quantities: {}, gyms: {}, sizes: {}, categories: {}}
    end 

    def create
        product = Product.create(product_params)
        render json: product
    end 

    def update
        product = Product.find(params[:id])
        product.update(product_params)
        render json: product, include: {quantities: {}, gyms: {}, sizes: {}, categories: {}}
    end 

    def destroy
        product = Product.find(params[:id])
        product.delete
    end 

    private

    def product_params 
        
        params.require(:product).permit(:id, :name, :color, :price, :image, :description, :gender)
    end 

end
