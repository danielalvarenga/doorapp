class App < ApplicationRecord
	has_many :tokens

	validates_presence_of :name

	def permanent_token
		return self.tokens.permanent.first unless self.tokens.permanent.blank?
	end
end
