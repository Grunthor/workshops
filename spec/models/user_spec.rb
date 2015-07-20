require 'spec_helper'

describe User do
  it "has a valid factory" do 
    Factory.create(:user).should be_valid 
  end
  #it { should validate_presence_of :firstname }
  #it { should validate_presence_of :lastname }
  it "has a valid firstname" do 
    first_name = FactoryGirl.build(:user)
    first_name.should validate_presence_of(:firstname)
  end

  it "by default isn't admin" do
    expect(User.new).to_not be_admin
  end
end
