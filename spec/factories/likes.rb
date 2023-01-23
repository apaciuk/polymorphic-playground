# == Schema Information
#
# Table name: likes
#
#  id                     :uuid             not null, primary key
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  things_that_we_like_id :string           not null
#  user_id                :uuid             not null
#
# Indexes
#
#  index_likes_on_things_that_we_like_id  (things_that_we_like_id)
#  index_likes_on_user_id                 (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
FactoryBot.define do
  factory :like do
    things_that_we_like_id { "MyString" }
    user { nil }
  end
end
