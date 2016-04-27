class Netpost < ActiveRecord::Base
  belongs_to :user
  belongs_to :network 
  has_many :comments, dependent: :destroy
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 250 }
end
