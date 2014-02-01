class Product < ActiveRecord::Base
	validates :title, presence: true
	validates :description, presence: true
	validates :user_id, presence: true
end
