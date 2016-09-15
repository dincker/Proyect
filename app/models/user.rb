class User < ActiveRecord::Base
	validates_length_of :nombre, :maximum => 30
	validates_length_of :apellido, :maximum => 30
	validates_length_of :fono, :maximum => 30
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, 
				format: { with:VALID_EMAIL_REGEX}, 
				uniqueness: { case_sensitive: false }
	validates_length_of :direccion, :maximum => 30
	has_secure_password
	validates_confirmation_of :password
	validates_presence_of :password_digest, :message => "ingrese password"
	
end
