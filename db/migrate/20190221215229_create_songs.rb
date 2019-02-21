class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.string :name
      t.string :avatar
      t.string :length
      t.belongs_to :Billboard, foreign_key: true
      t.belongs_to :Artist, foreign_key: true

      t.timestamps
    end
  end
end
