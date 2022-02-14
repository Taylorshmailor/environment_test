class Book < ApplicationRecord
	has_many :user
	validates :title, :author, :price, :published_date, presence: true
end
