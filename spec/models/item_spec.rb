require "rails_helper"

describe Item do
  it "has a valid factory" do
    expect(FactoryGirl.create(:item)).to be_valid
  end
  
  it "empty category should not be valid" do
    expect(FactoryGirl.build(:item, item_type_id: nil)).not_to be_valid
  end

end
