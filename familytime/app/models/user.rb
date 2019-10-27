class User < ActiveRecord::Base
	has_secure_password
	
	has_many :calendars
	has_many :events, through :calendars
	
	validates :name, presence: true
	validates :email, presence: true, uniqueness: true
	validates :password, presence: true
	
end