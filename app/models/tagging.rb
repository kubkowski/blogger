class Tagging < ActiveRecord::Base
  belongs_to :tag_id
  belongs_to :article_id
end
