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

  def new
  end

  def create
    @album = Album.new(title: params[:title], artist: params[:artist], genre: params[:genre])
    @album.save
    flash[:success] = "Album has been created"
    redirect_to "/albums/#{@album.id}"
  end

  def edit
    @album = Album.find_by(id: params[:id])
  end

  def update
   album = Album.find_by(id: params[:id])
   album.assign_attributes(title: params[:title], artist: params[:artist], genre: params[:genre])
    album.save

    redirect_to "/albums/#{album.id}"
  end

  def destroy
    @album = Album.find_by(id: params[:id])
    @album.destroy
    flash[:danger] = "Album has been destroyed"
    redirect_to "/index"
  end


end
