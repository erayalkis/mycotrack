class Block < ApplicationRecord
  has_one :spawn
  has_many :histores, as: :historyable
end