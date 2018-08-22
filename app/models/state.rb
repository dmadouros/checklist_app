class State < ApplicationRecord
  STATE_STARTED = 'Started'

  validates :name, presence: true

  scope :started, -> { find_by(name: STATE_STARTED) }
end
