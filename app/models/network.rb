class Network < ActiveRecord::Base
	belongs_to :user
	has_many :users
	mount_uploader :picture, PictureUploader 
end
