class ProductGymsController < ApplicationController
    skip_before_action :verify_authenticity_token
    skip_before_action :authorized

    def index
        pg = ProductGym.all 
        render json: pg
    end 

    def create
        # byebug
        gym = Gym.find_by(name: params[:gyms])
        pg = ProductGym.create(gym_id: gym.id, product_id: params[:product_id])
    end 


end 