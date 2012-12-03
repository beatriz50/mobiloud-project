class CreateApps < ActiveRecord::Migration
  def change
    create_table :apps do |t|
    
      t.string :app_name

      t.string :color
     
      t.string :background
      t.boolean :back_design

      t.string :icon
      t.boolean :icon_design

      t.string :splash
      t.boolean :splash_design

      t.float :price

      t.integer :status

      t.references :user

      t.timestamps
    end

    add_index :apps, :user_id
    add_index :apps, :app_name
    add_index :apps, :status
  end
end
