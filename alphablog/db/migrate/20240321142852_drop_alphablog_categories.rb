class DropAlphablogCategories < ActiveRecord::Migration[7.1]
  def change
    drop_table :alphablog_categories
  end
end
