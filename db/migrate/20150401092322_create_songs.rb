class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.references :user
      t.string :title, null: false, limit: 256
      t.text :content, null: false

      t.timestamps null: false
    end
  end
end
