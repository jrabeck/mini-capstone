class ImagesController < ApplicationController

	  def add_image
    

  end

  def save_new_image
  	@image = Image.new(image_url: params[:image_url], album_id: params[:album][:album_id])
    @image.save
    
    redirect_to "/index"
  end


end
