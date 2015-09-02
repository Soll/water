require "rails_helper"

describe Person do
  it "should create a valid factory" do
    expect(FactoryGirl.create(:person)).to be_valid
  end
end
