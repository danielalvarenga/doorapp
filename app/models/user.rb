class User < ApplicationRecord
	has_one :token, as: :tokenable, dependent: :destroy

	validates_presence_of :email, :username, :password
end
