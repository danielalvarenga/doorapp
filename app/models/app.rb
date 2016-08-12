class App < ApplicationRecord
	has_one :token, as: :tokenable, dependent: :destroy
	has_many :tmp_tokens, as: :tokenable, dependent: :destroy, class_name: 'Token'

	validates_presence_of :name
end
