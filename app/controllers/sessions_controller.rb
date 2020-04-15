class SessionsController < ApplicationController
    def new
        
    end
 

    def create 
        @user = User.find_by(email: params[:session][:email])
        session[:user_id] = @user.id
        redirect_to @user
    end

    #OLD SESSION CREATE
    # def create
    #     @user = User.find_by(email: params[:session][:email].downcase)
    #     if @user
    #     session[:user_id] = @user.id
    #     redirect_to @user
    #     else 
    #         redirect_to '/signup'
    #     end
    # end

    def destroy
        session.delete :user_id
        redirect_to signin_path
    end
end