class User < ApplicationRecord
  validates :name, presence: true, length: { maximum: 50 }
  validates :employee_number, presence: true, length: { in: 2..8 }, numericality: true, uniqueness: true, numericality: { :greater_than => +100000 }
  has_many :histories
  has_secure_password
end