class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :owned_events, class_name: 'Event'

  has_many :pricings, through: :owned_events
  has_many :promotions, through: :owned_events

  has_and_belongs_to_many :events
  has_and_belongs_to_many :roles, :join_table => :users_roles

  # Cloudinary Fun times
  has_one_attached :profile_image

  # Validations for signup
  validates :dob, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  
  validate :password_complexity

  # Every user gets a default role ( I am the only admin soz )
  after_create :assign_default_role
  
  # Testing password complexity for dat securitayyy
  def password_complexity
    return if password.blank? || password =~ /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,20}$/

    errors.add :password, 'Password complexity requirement not met.'
  end

end
