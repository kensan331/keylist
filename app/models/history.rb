class History < ApplicationRecord
  belongs_to :user
  belongs_to :key
  validates :key_id, {presence: true}
  validates :user_id, {presence: true}
end
