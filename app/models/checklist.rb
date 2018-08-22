class Checklist < ApplicationRecord
  belongs_to :state
  has_many :items
end
