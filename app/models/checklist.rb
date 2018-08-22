class Checklist < ApplicationRecord
  belongs_to :state
  has_many :items

  validates :name, presence: true
  validates :state, presence: true
end
