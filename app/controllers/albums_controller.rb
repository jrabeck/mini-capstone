class AlbumsController < ApplicationController

  before_action :authenticate_user!
  skip_before_action :authenticate_user!, only: [:index, :show]
  

	def albums
    @albums = Album.all
    @help = @albums[0]
    @ready_to_die = @albums[2]
    @what_we_all_come_to_need = @albums[1]
  end


  def index
    search = params[:sort]


    if current_user == nil
    @albums = Album.where(user_id: 1)
    else 
    @albums = Album.where(user_id: current_user.id)
    end 

    @images = Image.all
  	sort_by = params[:sort_by]
    if sort_by == "price_high"
      @albums = @albums.order(price: :desc)
    elsif sort_by == "price_low"
      @albums = @albums.order(price: :asc)
    elsif sort_by == "discount" 
      @albums = @albums.where("price < ?", 30)
    elsif sort_by == "random_album"
      @albums = @albums.order("RANDOM()").limit(1)
    end 

  end

  def show
    @album = Album.find_by(id: params[:id])

    if current_user
    if current_user.id != @album.user_id
      
    end
  end
  end

  def new

  end



  def create
    @album = Album.new(title: params[:title], artist: params[:artist], genre: params[:genre], description: params[:description], price: params[:price], supplier_id: params[:supplier_id], user_id: current_user.id)
    @album.save
    flash[:success] = "Album has been created"
    redirect_to "/albums/#{@album.id}"
  end

  def edit
    @album = Album.find_by(id: params[:id])
  end

  def update
   album = Album.find_by(id: params[:id])
   album.assign_attributes(title: params[:title], artist: params[:artist], genre: params[:genre], description: params[:description])
    album.save

    redirect_to "/albums/#{album.id}"
  end

  def destroy
    @album = Album.find_by(id: params[:id])
    @album.destroy
    flash[:danger] = "Album has been destroyed"
    redirect_to "/index"
  end

  def search
    @search_term = params[:search]
    @albums = Album.where("title LIKE ?", "%#{@search_term}%")

  end





end
