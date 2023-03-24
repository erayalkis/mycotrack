class Culture
  belongs_to :spawn
  has_many :histores, as: :historyable
end