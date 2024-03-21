class CreateAlphaBlogCategories < ActiveRecord::Migration[7.1]
  def change
    create_table :alpha_blog_categories do |t|
      t.integer :alpha_blog_id
      t.integer :category_id

      t.timestamps
    end
  end
end
