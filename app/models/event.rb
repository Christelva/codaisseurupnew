class Event < ApplicationRecord
  has_and_belongs_to_many :categories
  belongs_to :user, optional: true


  validates :name, presence: true
  validates :description, presence: true, length: {maximum: 500}
end
