class Spawn < ApplicationRecord
  belongs_to :user
  belongs_to :culture, optional: true
  has_many :histories, as: :historyable
end
