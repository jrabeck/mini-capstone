class OrdersController < ApplicationController

	def create
	# @album = Album.find_by(id: params[:album_id])
	# order = Order.new(quantity: params[:quantity], user_id: current_user.id, album_id: params[:album_id], subtotal: params[:subtotal], tax: params[:tax], total: params[:total])
	# order.save
	# @order = order
	


	@carted_albums = current_user.carted_albums.where(status: "Carted")
	
		
		@subtotal = 0
		@carted_albums.each do |carted_album|
			@subtotal += carted_album.album.price * carted_album.quantity
		end

		@tax = @subtotal * 0.09
		@total = @subtotal + @tax


	@order = Order.new(user_id: current_user.id, subtotal:  @subtotal, tax: @tax, total: @total)
	@order.save

	if @carted_albums.find_by(status: "Carted")
		@carted_albums.each do |album|
			album.assign_attributes(order_id: @order.id, status: "Bought")
			album.save
			end
	else
		redirect_to "/index"
	end

	flash[:success] = "Your order was made!"

	end
end


