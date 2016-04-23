class Concert < ActiveRecord::Base
	has_many :comments
	validates :artist, :venue, :city, :date, :price, :description, presence: true
end
