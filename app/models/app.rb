class App < ActiveRecord::Base
  attr_accessible :, : id_app, :back_design, :background, :color, :icon, :icon_design, :id_user, :price, :splash, :splash_design, :status


  validates :app_name, :presence => true, :unique => true
  validates :color, :presence => true
  validates :back_design, :value => 0
  validates :icon_design, :value => 0
  validates :splash_design, :value => 0
  validates :price, :value => 0

end


    
 