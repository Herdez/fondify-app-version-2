class Project < ApplicationRecord
	belongs_to :user
	has_many :faqs

	mount_uploader :image, ImageUploader
end
