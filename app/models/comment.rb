class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  belongs_to :netpost
  default_scope -> { order(created_at: :desc) }
end
