# == Schema Information
#
# Table name: likes
#
#  id                        :uuid             not null, primary key
#  things_that_we_liked_type :string           not null
#  created_at                :datetime         not null
#  updated_at                :datetime         not null
#  things_that_we_liked_id   :string           not null
#  user_id                   :uuid             not null
#
# Indexes
#
#  index_likes_on_things_that_we_liked_id    (things_that_we_liked_id)
#  index_likes_on_things_that_we_liked_type  (things_that_we_liked_type)
#  index_likes_on_user_id                    (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
require 'rails_helper'

RSpec.describe Like, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
