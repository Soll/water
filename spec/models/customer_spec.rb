require "rails_helper"

describe Customer do
  it "should have a valid factory" do
    expect(FactoryGirl.create(:customer)).to be_valid
  end
end
