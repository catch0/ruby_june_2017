class Event < ActiveRecord::Base
  belongs_to :user
  has_many :guests, dependent: :destroy
  has_many :guests_attending, through: :guests, source: :user
  validates :name, :location, :state, :date, presence: true 
end
