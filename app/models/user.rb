class User < ApplicationRecord

  attr_accessor :remember_token
  before_save { self.email = email.downcase } #some database adapters use case-sensitive indices

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :name, presence: true, length: {maximum: 50}
  validates :email, presence: true, length: { maximum: 255 }, 
            format: { with: VALID_EMAIL_REGEX },
            uniqueness: { case_sensitive: false }

  has_secure_password      
  validates :password, length: { minimum: 6 }, presence: true

  # Returns a Random token
  def User.new_token
  	SecureRandom.urlsafe_base64
  end

  def remember
  	
  end

end
