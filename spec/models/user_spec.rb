require 'spec_helper'

describe User do
  it "can create a new user" do
    user = User.create(:email => "foo@bar.com", :password => "password")
    user.persisted?.should be_true
  end

  it "can assign a role to a user" do
    user = User.create(:email => "foo_dj@bar.com", :password => "password", :role => "dj")
    user.persisted?.should be_true 
  end

end
