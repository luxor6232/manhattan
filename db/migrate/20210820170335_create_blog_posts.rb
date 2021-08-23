class CreateBlogPosts < ActiveRecord::Migration[6.1]
  def change
    create_table :blog_posts do |t|
      t.string :name
      t.text :content
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
