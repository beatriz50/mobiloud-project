class CreateApps < ActiveRecord::Migration
  def change
    create_table :apps do |t|
    
      t.string :app_name

      t.string :color
     
      t.string :background
      t.bool :back_design

      t.string :icon
      t.bool :icon_design

      t.string :splash
      t.bool :splash_design

      t.float :price

      t.integer :status

      t.references :user

      t.timestamps
    end

    add_index :apps, :user_id, :app_name
  end
end
