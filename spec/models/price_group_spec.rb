require "rails_helper"

describe PriceGroup do
  it "should be valid factory" do
    expect(FactoryGirl.create(:price_group)).to be_valid
  end
end
