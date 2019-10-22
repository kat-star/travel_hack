class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.datetime :birthdate
      t.string :email
      t.string :location
      t.text :bio
      t.string :password_digest

      t.timestamps
    end
  end
end
