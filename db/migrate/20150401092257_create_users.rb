class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user_name, null: false, unique: true, limit: 56
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
