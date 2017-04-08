require 'spec_helper'

describe User do
  before { @user = User.new(email: "manager@example.com", password: "12345678", password_confirmation: "12345678") }

  subject { @user }

  it { should respond_to(:email) }
  it { should respond_to(:password) }
  it { should respond_to(:password_confirmation) }
  # it { should respond_to(:authenticate) }
  it { should be_valid }

  describe "when invalid email occurs" do
    before { @user.email = " lalala "}
    it { should_not be_valid }
  end

  describe "when password doesn't match" do
    before { @user.password_confirmation = "mismatch" }
    it { should_not be_valid }
  end

end
