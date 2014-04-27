class Tag < ActiveRecord::Base
	has_many :taggings
	has_many :articles, through: :taggings, source: :tag

	def to_s
    name
  end
end
