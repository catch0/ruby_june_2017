class User < ActiveRecord::Base
    EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
    has_many :events
    has_many :guests
    has_many :events_attending, through: :guests, source: :event
    validates :first_name, :last_name, :location, presence: true 
    validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }
    has_secure_password
end
