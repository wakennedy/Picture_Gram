class PicturesController < ApplicationController
    def index
        @pictures = Picture.all
    end
    def show
        @picture = Picture.find(params[:id])
    end
    def new
        @picture = Picture.new
    end
    def create 
        @picture = Picture.new(pic_params)
        
        if @picture.save
            redirect_to @picture
        else  
            render :new
        end

    end


    private
    def pic_params
        params.require(:picture).permit(:title, :image_url)
    end
end
