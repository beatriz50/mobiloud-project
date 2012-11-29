class User < ActiveRecord::Base
  attr_accessible :address, :email, :name_company, :phone, :url

  validates :url, :presence => true, :unique => true
  validates :email, :presence => true, :unique => true
  validates :name_company, :presence => true, :unique => true
  validates :phone, :presence => true
  validates :address, :presence => true
  validates :password_hash, :presence => true

  	#Email validation
	def validate_unique_email
		if User.find_by_email(self.email)
			errors.add(:email, "is already used by another Company.")
		end
	end
  	
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