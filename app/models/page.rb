class Page < ActiveRecord::Base

	def self.find(slug)
    find_by_slug(slug)
  end

	def to_param
    slug
  end
end
