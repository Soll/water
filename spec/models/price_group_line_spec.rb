require "rails_helper"

describe PriceGroupLine do
  it "should create a valid factory" do
    expect(FactoryGirl.create(:price_group_line)).to be_valid
  end
end
