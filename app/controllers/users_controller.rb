
# app/controllers/users_controller.rb
class UsersController < ApplicationController
    # GET /users
    def index
      @users = User.all
      render json: @users
    end

    # GET /users/:id
    def show
      @user = User.find(params[:id])
      render json: @user
    end

     # POST /replies
     def create
      @user = User.new(user_params)
      if @user.save
        render json: @user, status: :created
      else
        render json: @user.errors, status: :unprocessable_entity
      end
    end
  end
