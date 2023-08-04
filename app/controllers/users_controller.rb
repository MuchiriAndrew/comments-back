
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

    def destroy
      @user = User.find(params[:id])
      @user.destroy
      render json: { message: 'User was successfully destroyed.' }
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

    private

    def user_params
      params.require(:user).permit(:name, :password, :email, :image)
    end
  end

