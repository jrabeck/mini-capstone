class AlbumsController < ApplicationController

	def albums
    @albums = Album.all
    @help = @albums[0]
    @ready_to_die = @albums[2]
    @what_we_all_come_to_need = @albums[1]
  end


  def index
  	@albums = Album.all
  end

  def show
    @album = Album.find_by(id: params[:id])
  end

  def new_album
  end

  def create_album
    @album = Album.new(title: params[:title], artist: params[:artist], genre: params[:genre])
    @album.save
  end

  def edit_album
    @album = Album.find_by(id: params[:id])
  end

  def update_album
   @album = Album.find_by(id: params[:id])
   @album.assign_attributes(title: params[:title], artist: params[:artist], genre: params[:genre])
    @album.save
  end

end
