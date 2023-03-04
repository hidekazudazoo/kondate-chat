FactoryBot.define do
  factory :user do
    nickname {"test"}
    email {"test@testmail"}
    password{"123456"}
    password_confirmation{password}
  end
end