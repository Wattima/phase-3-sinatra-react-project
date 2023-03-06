class CreateCreations < ActiveRecord::Migration[6.1]
  def change
    create_table :creations do |t|
      t.string :title
      t.text :content
      t.integer :length
      t.string :category
      t.belongs_to :user
      t.timestamps
    end
  end
end
