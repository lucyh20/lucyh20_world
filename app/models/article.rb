class Article < ActiveRecord::Base
	attr_accessible :title, :content, :category_id, :active
	belongs_to :category
	validates_presence_of :title
	validates_presence_of :content

	scope :alphabetical, order("title")
	scope :active, where("active = ?", true)
end
