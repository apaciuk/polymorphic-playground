FactoryBot.define do
  factory :announcement do
    published_at { "2023-01-23 18:22:30" }
    announcement_type { "MyString" }
    name { "MyString" }
    description { "MyText" }
  end
end
