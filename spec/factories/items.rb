FactoryGirl.define do
  factory :item do
    name "Баклашка"
    association :item_type, factory: :assoc_item_type
  end

  factory :assoc_item_type, class: "ItemType" do
    name "Бутылка"
  end
end