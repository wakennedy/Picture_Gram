class PicturesController < ApplicationController
    def index
        @pictures = Picture.sorted_by_most_recent
    end
    def show
        @picture = Picture.find(params[:id])
    end
    def new
        @picture = Picture.new
        @user = current_user
        @tags = Tag.all
        @tag = Tag.new
    end
    def create 
        @picture = Picture.new(pic_params)
        
        if @picture.save
            redirect_to @picture
        else  
            @user = current_user
            render :new
        end
    end

    def destroy
        @picture = Picture.find(params[:id])
        @picture.delete
        redirect_to '/pictures'
    end

    private
    def pic_params
        params.require(:picture).permit(:title, :image_url, :user_id, tag_ids:[], tag_attributes:[:name], tags_ids:[], tags_attributes:[:name])
    end
end