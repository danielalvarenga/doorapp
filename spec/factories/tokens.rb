FactoryGirl.define do
  factory :token do
    secret_key "MyString"
    temporary false
    app nil
    user nil
  end
end
