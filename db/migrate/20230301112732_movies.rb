class Movies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :director
      t.integer :year
      t.text :plot
      t.string :poster
    end
  end
end
