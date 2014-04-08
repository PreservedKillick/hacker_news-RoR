require 'spec_helper'

describe User do
  it { should validate_presence_of :name }
  it { should have_many :posts }
  ## FactoryGirl basic test
  it "is totally valid" do
    test_user = FactoryGirl.create(:user)
    expect(test_user).to be_valid
  end

end
