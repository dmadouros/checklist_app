class Item < ApplicationRecord
  belongs_to :checklist

  validates :name, presence: true
  validates :checklist, presence: true
end
