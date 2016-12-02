class CartedAlbumsController < ApplicationController


	def index

	@carted_albums = current_user.carted_albums.where(status: "carted")


	end

	def create
		# @orders = current_user.orders
		# if @orders
		# 	@order = @orders.last
		# else
		# 	@order = Order.new(user_id: current_user.id)
		# end
		carted_album = CartedAlbum.new(user_id: current_user.id, album_id: params[:album_id], quantity: params[:quantity], status: "Carted")
		carted_album.save

		redirect_to "/checkout"
	end

	def destroy
		deleted_album = current_user.carted_albums.find_by(id: params[:id])
		deleted_album.assign_attributes(status: "Removed")
		deleted_album.save
	end



end
