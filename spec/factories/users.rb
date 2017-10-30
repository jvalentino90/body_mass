FactoryGirl.define do
  factory :user, class: 'User' do
    sequence(:email){ |n| "user_#{n}@bodymass.com" }
    password 'dummy123'
    password_confirmation 'dummy123'
  end
end