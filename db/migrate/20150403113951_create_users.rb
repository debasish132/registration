class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :email
      t.string :password
      t.string :confirmpassword
      t.text :address

      t.timestamps null: false
    end
  end
end
