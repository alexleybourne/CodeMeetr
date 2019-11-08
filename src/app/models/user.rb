class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :owned_events, class_name: 'Event'

  has_many :pricings, through: :owned_events
  has_many :promotions, through: :owned_events

  has_and_belongs_to_many :events
  has_one_attached :profile_image

  validates :dob, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  
  validate :password_complexity
  
  def password_complexity
    return if password.blank? || password =~ /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,20}$/

    errors.add :password, 'Password complexity requirement not met.'
  end
end
