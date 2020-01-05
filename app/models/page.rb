class Page < ApplicationRecord

  acts_as_list scope: :subject

  belongs_to :subject
  has_many :sections
  has_and_belongs_to_many :admin_users

  scope :visible, lambda { where(visible: true)}
  scope :invisible, lambda { where(visible: false)}
  scope :sorted, lambda { order(position: :asc)}
  scope :newest_first, lambda { order(created_at: :desc)}
  scope :search, lambda { |query| where(["name LIKE ?", "%#{query}%"])}

  validates_presence_of :name
  validates_length_of :name, maximum: 255
  validates_presence_of :permalink
  validates_length_of :permalink, within: 3..255
  validates_uniqueness_of :permalink
  # This will go to database to check for uniqueness
  
end
