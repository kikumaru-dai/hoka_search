class Hotel < ApplicationRecord
  def self.ransackable_attributes(auth_object = nil)
    ["address", "category", "category_id", "created_at", "describe", "id", "image", "location_id", "name", "title", "updated_at"]
  end
  mount_uploader :image, ImageUploader
  scope :search_by_category, ->(category) { where(category: category) }
end
