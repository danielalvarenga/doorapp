class App < ApplicationRecord
	has_one :token
	has_many :tmp_tokens
end
