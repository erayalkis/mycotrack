class Block < ApplicationRecord
  belongs_to :user
  belongs_to :spawn, optional: true
  has_one :spawn
  has_many :histores, as: :historyable
end