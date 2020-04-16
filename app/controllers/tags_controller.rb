class TagsController < ApplicationController
    def index
        @tags = Tag.all
    end
    def show
        @tag = Tag.find(params[:id])
    end
    def new
        @tag = Tag.new
        @user = current_user
        @tags = Tag.all
    end
    def create 
        @tag = Tag.new(tag_params)
        
        if @tag.save
            redirect_to @tag
        else  
            @user = current_user
            render :new
        end

    end


    private
    def tag_params
        params.require(:tag).permit(:name)
    end
end
