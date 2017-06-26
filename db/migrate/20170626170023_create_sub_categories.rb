class CreateSubCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :sub_categories do |t|
      t.string :title
      t.boolean :active, default: false
      t.integer :category_id
      t.timestamps
    end
  end
end
