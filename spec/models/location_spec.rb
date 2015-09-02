require "rails_helper"

describe Location do
  it "should create a valid factory" do
  	expect(FactoryGirl.create(:location)).to be_valid
  end
end
