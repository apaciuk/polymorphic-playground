# == Schema Information
#
# Table name: posts
#
#  id          :uuid             not null, primary key
#  description :text             default(""), not null
#  title       :string           default(""), not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :uuid             not null
#
# Indexes
#
#  index_posts_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class Post < ApplicationRecord
  belongs_to :user
  has_many :likes, as: :things_that_we_like, dependent: :destroy
  accepts_nested_attributes_for :likes, allow_destroy: true
  has_rich_text :description
end
