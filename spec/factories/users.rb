FactoryGirl.define do
  factory :user do
    email "123456@co.jp"
    password "123456"
    password_confirmation "123456"
    name "yu"
    author "Nishino"
    gender "male"
  end
end
