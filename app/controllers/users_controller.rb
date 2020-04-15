class UsersController < ApplicationController
    def index
        @users = User.all
    end
    def show
        #return head(:forbidden) unless session.include? :user_id
        @user = User.find(params[:id])
        @picture = @user.pictures.build
        
        
    end
    def new
        @user = User.new
    end
    def create
        @user = User.new(user_params)
        

        if @user.save
            #session[:user_id] = @user.id
            redirect_to @user
        else 
            render :new
        end
    end


    private
    def user_params
        params.require(:user).permit(:email, :username, :password)
    end
end
