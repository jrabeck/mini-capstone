class CartedAlbum < ApplicationRecord
	belongs_to :order, optional: :true
	belongs_to :album
	belongs_to :user
end
