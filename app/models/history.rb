class History < ApplicationRecord
  belongs_to :historyable, polymorphic: true
end
