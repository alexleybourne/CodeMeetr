class Event < ApplicationRecord
  belongs_to :pricing
  belongs_to :promotion
  belongs_to :user

  # Was going to add a photos area to pages
  has_many :images

  # Cloudinary top image
  has_one_attached :top_image

  # Categories are waiting for later
  has_and_belongs_to_many :categories
  has_and_belongs_to_many :users

  # Event capacity
  def capacity
    pricing.capacity
  end

  # Event priorities base don payment (Later implementation)
  def priority
    promotion.priority
  end
end
