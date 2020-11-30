class Api::V1::UsersController < ApplicationController
    skip_before_action :verify_authenticity_token
    skip_before_action :authorized, only: [:create]

    def profile
        render json: { user: UserSerializer.new(current_user) }, status: :accepted
    end
 
    def create
      # binding.pry
      @user = User.create(user_params)
      if @user.valid?
        @token = encode_token(user_id: @user.id)
        render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
      else
        render json: { error: 'failed to create user' }, status: :not_acceptable
      end
    end

    def update
      user = User.find(user_params[:id])
      binding.pry
    end 

    private 
    def user_params 
        params.require(:user).permit(:id, :name, :email, :password, :security_question, :security_answer, :image, :status)
    end 
end
