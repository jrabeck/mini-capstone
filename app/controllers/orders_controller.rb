class OrdersController < ApplicationController

	def create
	@album = Album.find_by(id: params[:album_id])
	order = Order.new(quantity: params[:quantity], user_id: current_user.id, album_id: params[:album_id], subtotal: params[:subtotal], tax: params[:tax], total: params[:total])
	order.save
	@order = order
	flash[:success] = "Your order was made!"
	end

end
