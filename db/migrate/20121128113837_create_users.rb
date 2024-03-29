class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_hash
      t.string :password_salt

      t.string :name_company
      t.string :url

      t.string :phone

      t.string :address

      t.timestamps
    end

    add_index :users, :email
  end
end
