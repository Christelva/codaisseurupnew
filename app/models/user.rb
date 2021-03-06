class User < ApplicationRecord
  has_secure_token

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :events, dependent: :destroy
  has_one :profile
  has_many :registrations, dependent: :destroy
  has_many :registered_events, through: :registrations, source: :event

  def profile?
    profile.present? && !profile.id.nil?
  end

  def full_name
    if profile
      return profile.full_name
    else
      return email
    end
  end
end
