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
class Like < ApplicationRecord
  belongs_to :user
end
