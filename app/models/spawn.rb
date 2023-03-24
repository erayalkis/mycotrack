class Spawn < ApplicationRecord
  has_one :culture
  has_many :histores, as: :historyable
end
