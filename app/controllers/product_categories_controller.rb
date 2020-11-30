class ProductCategoriesController < ApplicationController
    skip_before_action :verify_authenticity_token
    skip_before_action :authorized

    def index
        pc = ProductCategory.all 
        render json: pc
    end 

    def create
        # byebug
        category = Category.find_by(name: params[:category])
        cat = ProductCategory.create(category_id: category.id, product_id: params[:product_id])
    end 

end
