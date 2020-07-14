class Office < ApplicationRecord
  belongs_to :building
  belongs_to :company
  validates :floor_number, presence: true
end
