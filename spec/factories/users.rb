FactoryGirl.define do
  factory :user do
    # email { FFaker::Internet.email }
    email "test2@example.com"
    password "TestTest"
    # password_confirmation "TestTest"

    # factory :admin do
    #   admin true
    # end
  end
end