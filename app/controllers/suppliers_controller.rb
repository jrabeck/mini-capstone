
	class SuppliersController < ApplicationController


  def show
    @supplier = Supplier.find_by(id: params[:id])
  end

  def new
  end

  def create
    @supplier = Supplier.new(name: params[:name], email: params[:email], phone: params[:phone])
    @supplier.save
    flash[:success] = "Supplier has been created"
    redirect_to "/Suppliers/#{@Supplier.id}"
  end

  def edit
    @supplier = Supplier.find_by(id: params[:id])
  end

  def update
   supplier = Supplier.find_by(id: params[:id])
   supplier.assign_attributes(name: params[:name], email: params[:email], phone: params[:phone])
    supplier.save

    redirect_to "/Suppliers/#{Supplier.id}"
  end

  def destroy
    @supplier = Supplier.find_by(id: params[:id])
    @supplier.destroy
    flash[:danger] = "Supplier has been destroyed"
    redirect_to "/index"
  end

  def search
    @search_term = params[:search]
    @suppliers = Supplier.where("name LIKE ?", "%#{@search_term}%")

  end


  

end

