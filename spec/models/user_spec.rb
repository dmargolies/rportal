require 'spec_helper'

describe User do
  it "can create a new user" do
    user = User.create(:email => "foo@bar.com", :password => "password", :password_confirmation => "password")
    user.persisted?.should be_true
  end
end
