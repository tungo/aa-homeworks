require 'rails_helper'

RSpec.describe User, type: :model do
  subject(:user) do
    FactoryGirl.build(:user,
      email: 'tester@appacademy.io',
      password: 'a password')
  end

  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:password_digest) }
  it { should validate_length_of(:password).is_at_least(6) }

  describe '#is_password?' do
    it "verifies a correct password" do
      expect(user.is_password?('a password')).to be true
    end

    it 'verifies a incorrect password' do
      expect(user.is_password?('not password')).to be false
    end
  end

  describe "#reset_session_token!" do
    it "reset session token on user" do
      session_token = user.session_token
      user.reset_session_token!

      expect(user.session_token).to_not eq(session_token)
    end
  end
end
