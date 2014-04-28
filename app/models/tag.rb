class Tag < ActiveRecord::Base
	has_many :taggings
	has_many :articles, :through => :taggings, :source => 'tag_id'

	#def to_s
  #  name
  #end
end
