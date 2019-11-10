class LoginController < ApplicationController
    def create
      user = User.find_by("lower(username) = ?", params[:username].downcase)
      if user && user.authenticate(params[:password])
        render json: { token: create_token(user.id), user_id: user.id }
      else
        render json: { errors: [ "That didn't match any users WE know about 🐶 " ] }, status: :unprocessable_entity
      end
    end
   end