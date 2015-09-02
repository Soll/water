FactoryGirl.define do
  factory :location do
    adres "MyString"
    phone "MyString"
    info "MyString"
    association :customer, factory: :assoc_customer
  end

  factory :assoc_customer, class: "Customer" do
    short_name "MyString"
    full_name "MyString"
    phone "MyString"
    adres "MyString"
    price_group nil
  end
end
