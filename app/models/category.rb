class Category < ApplicationRecord
	has_many :album_categories
	has_many :albums, through: :album_categories
end
