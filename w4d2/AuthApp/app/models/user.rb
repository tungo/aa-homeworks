class User < ActiveRecord::Base
  validates :username, :session_token, pressence: true
  validates :password_digest, pressence: { message: "Password can't be blank" }
  validates :password, allow_nil: true

  before_validation :ensure_session_token


  def self.find_by_credentials(username, password)
    user = find_by(username: username)

    return nil unless user && user.is_password?(password)
    user
  end

  def self.generate_session_token
    SecureRandom::urlsafe_base64(32)
  end

  def reset_session_token!
    self.session_token = generate_session_token
    self.save!
  end

  def ensure_session_token
    self.session_token ||= generate_session_token
  end

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end

  private
  def is_password?(password)
    BCrypt::Password.new(password_digest).is_password?(password)
  end
end
