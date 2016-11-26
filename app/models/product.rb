class Product < ActiveRecord::Base
  belongs_to :category
  mount_uploader :image, ImageUploader
  has_many :cart_item, dependent: :destroy
end
