class Product < ApplicationRecord
    mount_uploader :image, ProductImageUploader
    default_scope -> { order(created_at: :desc) }
end
  