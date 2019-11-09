class Event < ApplicationRecord
  belongs_to :pricing
  belongs_to :promotion
  belongs_to :user

  has_many :images
  has_one_attached :top_image

  has_and_belongs_to_many :categories
  has_and_belongs_to_many :users

  def capacity
    pricing.capacity
  end

  def priority
    promotion.priority
  end
end
