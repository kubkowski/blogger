class CreateTaggings < ActiveRecord::Migration
  def change
    create_table :taggings do |t|
      t.references :tag_id, index: true
      t.references :article_id, index: true

      t.timestamps
    end
  end
end
