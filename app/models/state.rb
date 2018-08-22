class State < ApplicationRecord
  STATE_STARTED = 'Started'

  scope :started, -> { find_by(name: STATE_STARTED) }

  validates :name, presence: true
end
