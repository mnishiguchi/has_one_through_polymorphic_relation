class CreateMovies < ActiveRecord::Migration[5.0]
  def change
    create_table :movies do |t|
      t.text :title, null: false
      t.text :director
      t.text :writer
      t.integer :year
      t.text :length

      t.timestamps
    end
    add_index :movies, :title
    add_index :movies, :director
    add_index :movies, :writer
    add_index :movies, :year
    add_index :movies, :length
  end
end
