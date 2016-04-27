class Netpost < ActiveRecord::Base
  belongs_to :user
  belongs_to :network 
end
