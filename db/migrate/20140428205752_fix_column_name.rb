class FixColumnName < ActiveRecord::Migration
  	def change
    	change_table "taggings" do |t|
      t.rename "tag_id_id", "tag_id"
      t.rename "article_id_id", "article_id"
    	end
    end
end
