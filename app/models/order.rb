class Order < ApplicationRecord
	belongs_to :user
	has_many :carted_albums
	has_many :albums, through: :carted_albums
	end
