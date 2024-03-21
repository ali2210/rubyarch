class CreateCategories < ActiveRecord::Migration[7.1]
  def change
    create_table :categories do |t|
      t.string :category
      t.string :subcategory

      t.timestamps
    end
  end
end
