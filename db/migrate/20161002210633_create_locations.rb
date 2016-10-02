class CreateLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|
      t.string :name, unique: true, null: false

      t.timestamps
    end
    add_index :locations, :name
  end
end
