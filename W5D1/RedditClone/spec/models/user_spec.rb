require 'rails_helper'

RSpec.describe User, type: :model do
  subject(:user) do
    User.new(name: 'Gatsby', password: 'thegreatcaterpie')
  end

  # validations
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:password_digest) }
  it { should validate_length_of(:password).is_at_least(6) }

  # associations
  it { should have_many(:subs) }
  it { should have_many(:user_votes) }
  it { should have_many(:comments) }

  # methods
  it "creates a password digest when given a password"
    expect(user.password_digest).to_not be_nil
  end

  it "creates a session token before validation"
    user.valid?
    expect(user.session_token).to_not be_nil
  end

  describe "#reset_session_token!" do
    it "sets a new session token for the user" do
      user.valid?
      old_token = user.session_token
      user.reset_session_token!

      expect(user.session_token).to_not eq(old_token)
    end

    it "returns the new session token" do
      expect(user.reset_session_token!).to eq(user.session_token)
    end
  end

  describe "#is_password?" do
    it "checks that password is correct" do
      expect(user.is_password?('thegreatcaterpie')).to be true
    end

    it "returns false when password is incorrect" do
      expect(user.is_password?('caterpie')).to be false
    end
  end

  describe ".find_by_credentials" do
    before { user.save! }

    it "returns user given when given correct credentials" do
      expect(User.find_by_credentials('Gatsby', 'thegreatcaterpie')).to eq(user)
    end

    it "returns nil when given incorrect credentials" do
      expect(User.find_by_credentials('Gatsby', 'caterpie')).to eq(nil)
    end
  end
end
