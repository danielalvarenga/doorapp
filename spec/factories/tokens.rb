FactoryGirl.define do
  factory :token do
    secret_key "MyString"
    temporary false
    tokenable nil
  end
end
