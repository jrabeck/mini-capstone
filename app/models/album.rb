class Album < ApplicationRecord
belongs_to :supplier
has_many :images
	def sale_message
		if price.to_i < 25
			return "Discount item!"
		else 
			return "On Sale!"
		end
	end 

	def tax
		tax = (price.to_i * 0.09)
		return tax.to_s
	end

	def total 
		price.to_i * 0.09 + price.to_i
	end

	def image
		@image = Image.all
	end

end

