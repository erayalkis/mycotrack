class Culture < ApplicationRecord
  belongs_to :spawn
  has_many :histores, as: :historyable
end