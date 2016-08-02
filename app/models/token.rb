class Token < ApplicationRecord
  belongs_to :app
  belongs_to :user

  before_create do |token|
    token.secret_key = token.generate_secret_key
  end

  def generate_secret_key
    loop do
      secret_key = SecureRandom.hex
      break secret_key unless Token.exists?(secret_key: secret_key)
    end
  end
  
end
