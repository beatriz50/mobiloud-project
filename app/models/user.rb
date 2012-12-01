class User < ActiveRecord::Base
  attr_accessible :address, :email, :name_company, :phone, :url

  validates :url, :presence => true, :unique => true

  #the messages must be inside validates method
  validates :email, :presence => true, :uniqueness => true, :message => "is already used by another user"

  #why the name of the company is unique? There could be companies with the same name! 
  validates :name_company, :presence => true

  #look better the migration file! There is something wrong
  validates :phone, :presence => true

  validates :address, :presence => true
  validates :password_hash, :presence => true


	#### why these methods? only for the message?

 	#Company validation
	def validate_unique_url
		if User.find_by_url(self.url)
			errors.add(:url, "is already registered.")
		end
	end

	#URL validation
	def validate_unique_name_company
		if User.find_by_name_company(self.name_company)
			errors.add(:name_company, "is already used by another Company.")
		end
	end
end