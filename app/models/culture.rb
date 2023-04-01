class Culture < ApplicationRecord
  belongs_to :user
  has_many :spawns
  has_many :histories, as: :historyable

  validates :species, presence: true
end