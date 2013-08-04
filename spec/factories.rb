FactoryGirl.define do
  factory :user do
    name   "Matt"
    email  "matt@matt.com"
    password "foobar"
    password_confirmation "foobar"
  end
end
