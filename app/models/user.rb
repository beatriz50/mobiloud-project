class User < ActiveRecord::Base
  attr_accessible :address, :email, :name_company, :phone, :url

  validates :url, :presence => true, :unique => true
  validates :email, :presence => true, :unique => true
  validates :name_company, :presence => true, :unique => true
  validates :phone, :presence => true
  validates :address, :presence => true
  validates :password_hash, :presence => true

  

end