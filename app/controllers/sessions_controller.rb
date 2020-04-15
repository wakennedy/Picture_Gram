class SessionsController < ApplicationController
    def new
        
    end
 
    def create
        user = User.find_by(email: params[:session][:email].downcase)
        session[:user_id] = @user.id
        redirect_to user
    end
    def destroy
        session.delete(:user_id)
        redirect_to '/signin'
    end
end