class User < ApplicationRecord
	has_one :token

	validates_presence_of :email, :username, :password
end
