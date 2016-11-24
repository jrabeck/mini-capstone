class ImagesController < ApplicationController

	  def add_image
      @images = Image.all
      @image = Image.new
      if params[:album_id]
      	@image[:album_id] = params[:album_id]
      end
  end

  def save_new_image
  	@image = Image.new(image_url: params[:image_url], album_id: params[:album_id])
    @image.save
    
    redirect_to "/index"
  end


end
