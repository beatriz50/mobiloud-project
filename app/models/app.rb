class App < ActiveRecord::Base
  attr_accessible :color,:back_design, :background, :icon, :icon_design, :splash, :splash_design, :price, :status


  validates :app_name, :presence => {:message => "must be present"},
                       :uniqueness => {:message => "There is another app with that name"}
  validates :name_company, :presence => {:message => "must be present"}
  validates :color, :presence => {:message => "must be present"}
  
end


    
 