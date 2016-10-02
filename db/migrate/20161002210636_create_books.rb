class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.text :isbn
      t.text :title
      t.text :author
      t.text :publisher
      t.integer :year

      t.timestamps
    end
    add_index :books, :isbn
    add_index :books, :title
    add_index :books, :author
    add_index :books, :publisher
    add_index :books, :year
  end
end
