class Culture < ApplicationRecord
  has_many :histores, as: :historyable
  validates :species, presence: true
end