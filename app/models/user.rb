class User < ActiveRecord::Base
	validates :first_name, :presence => true
	validates :password, :confirmation => true, length: { minimum: 6 } 
	validates_confirmation_of :password
	validates :email, :presence => true, :uniqueness => true
	has_secure_password

end
