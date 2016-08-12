class Token < ApplicationRecord
  belongs_to :tokenable, polymorphic: true

  before_create do |token|
		token.secret_key = token.generate_secret_key
	end

	def generate_secret_key
		loop do
			self.secret_key = SecureRandom.hex
			break self.secret_key unless Token.exists?(secret_key: self.secret_key)
		end
	end
end
