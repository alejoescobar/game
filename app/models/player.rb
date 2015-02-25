class Player < ActiveRecord::Base
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  validates :name, :email, :username, :points, presence: true
  validates :username, length: { in: 5..20 }, uniqueness: true
  validates :points, numericality: { greater_than_or_equal_to: 0 }
  validates :active, inclusion: { in: %w(true false)
end
