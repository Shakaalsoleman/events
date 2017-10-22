class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events, id: false do |t|
      t.primary_key :Id
      t.string :name
      t.decimal :longitude
      t.decimal :latitude

      t.timestamps
    end
    add_index :events, :Id, unique: true
    add_index :events, :name, unique: true
    add_index :events, [ :longitude, :latitude ], unique: true
  end
end
