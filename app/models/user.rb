class User < ActiveRecord::Base
  attr_accessible :email, :name_company, :phone, :url, :address

  validates :url, :presence => true, :uniqueness => {:message => "This url is already used by another company"}
  validates :email, :presence => true, :uniqueness => {:message => "There is user with that email"}
  validates :name_company, :presence => {:message => "must be present"}
  validates :phone, :presence => {:message => "must be present"}
  validates :address, :presence => {:message => "must be present"}


end