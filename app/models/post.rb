class Post < ActiveRecord::Base
  belongs_to :user
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 150} # Tweets are capped at 15 chars.
  default_scope -> { order(created_at: :desc) } # Newest tweets/posts first


end
