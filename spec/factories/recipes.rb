FactoryBot.define do
  factory :recipe do
    title {"タイトル"}
    category_id {1}
    headline {"メインコピーです"}
    ingredient {"材料です"}
    direction {"作り方です"}
    memo {"メモです"}
    association :user
    after(:build) do |recipe|
      recipe.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
