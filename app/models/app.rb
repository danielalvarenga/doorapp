class App < ApplicationRecord
	has_one :token
	has_many :tmp_tokens

	validates_presence_of :name
end
