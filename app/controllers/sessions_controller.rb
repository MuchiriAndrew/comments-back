

class SessionsController < ApplicationController
    def create
      user = User.find_by(email: session_params[:email])
      if user && user.authenticate(session_params[:password])
        session[:user_id] = user.id
        render json: { user_id: user.id }
      else
        render json: { status: :unauthorized, error: "Invalid email or password" }
      end
    end
  
    private
  
    def session_params
      params.require(:user).permit(:email, :password)
    end
  end
  