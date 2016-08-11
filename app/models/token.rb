class Token < ApplicationRecord
  belongs_to :app
  belongs_to :user

  before_create do |token|
    token.secret_key = token.generate_secret_key
  end

  validates_presence_of :secret_key
  validates_inclusion_of :temporary, in: [true, false]
  validate :validates_token_associated

  scope :permanent, -> { where(temporary: false) }

  private

    def generate_secret_key
      loop do
        self.secret_key = SecureRandom.hex
        break self.secret_key unless Token.exists?(secret_key: self.secret_key)
      end
    end

    def validates_token_associated
      unless !self.app_id.blank? || !self.user_id.blank?
        errors.add(:app, :invalid) 
        errors.add(:user, :invalid)
      end
    end

end
