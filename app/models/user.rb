class User < ActiveRecord::Base
	has_many :runs
	has_secure_password
	validates :email, format: /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i, uniqueness: true
end
