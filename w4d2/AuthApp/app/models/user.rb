class User < ActiveRecord::Base
  validates :username, :session_token, pressence: true
  validates :password_digest, pressence: { message: "Password can't be blank" }
  validates :password, allow_nil: true

  before_validation :ensure_session_token

end
