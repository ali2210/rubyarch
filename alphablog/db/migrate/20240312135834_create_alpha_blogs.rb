class CreateAlphaBlogs < ActiveRecord::Migration[7.1]
  def change
    create_table :alpha_blogs do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
