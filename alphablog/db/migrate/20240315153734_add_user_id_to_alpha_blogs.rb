class AddUserIdToAlphaBlogs < ActiveRecord::Migration[7.1]
  def change
    add_column :alpha_blogs, :user_id, :int
  end
end
