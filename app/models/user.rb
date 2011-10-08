	require 'bcrypt'
class User < ActiveRecord::Base
	include BCrypt
	validates_uniqueness_of :username
	validates_uniqueness_of :email
	validates_presence_of :email
	validates_presence_of :username
	validates_presence_of :fname
	validates_presence_of :lname
	validates_presence_of :password
	
end
