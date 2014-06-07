class Article < ActiveRecord::Base
	belongs_to :user

	validates :title, presence: true
	validates :description, presence: true

	def blurb
		description = self.description
		blurb = description.truncate(200, separator: /\s/)
	end
end