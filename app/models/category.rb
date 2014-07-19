class Category < ActiveRecord::Base
  has_many :products
  validate :name, presence: true
  validates_uniqueness_of :name
end
