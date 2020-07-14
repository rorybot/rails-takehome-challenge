class Company < ApplicationRecord
  has_many :buildings, through: :offices
  has_many :offices

  validates :name, presence: true,
                  length: { minimum: 5 }
end
