class Netpost < ActiveRecord::Base
  belongs_to :user
  belongs_to :network 
  has_many :comments, dependent: :destroy
end
