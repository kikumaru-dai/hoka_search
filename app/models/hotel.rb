class Hotel < ApplicationRecord
    has_many :categorys
    has_many :locations
    mount_uploader :image, ImageUploader
end
